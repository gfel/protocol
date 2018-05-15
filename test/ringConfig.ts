import { RingInfo } from "../util/types";

export const ringInfoList: RingInfo[] = [
  {
    description: "ring with 2 orders - prices exactly match",
    amountSList: [1e17, 300e18],
    amountBList: [300e18, 1e17],
    buyNoMoreThanAmountBList: [false, false],
    feeSelections: [0, 0],
    salt: 10,
  },
  {
    description: "ring with 2 orders -  ",
    amountSList: [1000e18, 100e18],
    amountBList: [100e18, 1000e18],
    lrcFeeAmountList: [10e18, 5e18],
    marginSplitPercentageList: [0, 0],
    buyNoMoreThanAmountBList: [false, false],
    feeSelections: [0, 0],
    salt: 20,
  },
];