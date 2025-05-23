// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployBsc is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x592B5C472aF554B4E33a1A0e9e02b04664dd788B,
            weth9: 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c,
            seaportV1_5: UNSUPPORTED_PROTOCOL,
            seaportV1_4: UNSUPPORTED_PROTOCOL,
            openseaConduit: UNSUPPORTED_PROTOCOL,
            nftxZap: UNSUPPORTED_PROTOCOL,
            x2y2: UNSUPPORTED_PROTOCOL,
            foundation: UNSUPPORTED_PROTOCOL,
            sudoswap: UNSUPPORTED_PROTOCOL,
            elementMarket: UNSUPPORTED_PROTOCOL,
            nft20Zap: UNSUPPORTED_PROTOCOL,
            cryptopunks: UNSUPPORTED_PROTOCOL,
            looksRareV2: UNSUPPORTED_PROTOCOL,
            routerRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareToken: UNSUPPORTED_PROTOCOL,
            v2Factory: 0xA8815fcC143AA93aD8e9Eab987970bB2DBfE2CCa, // Aerodrome PoolFactory
            v3Factory: 0xD1008d59FEB0c952fC845Ac15D77DB5A877c197E, // Aerodrome CLFactory
            v2Implementation: 0x32a6353E7625e2C92AAb6517C1efe6D0e1A4DFA9, // v2Factory.implementation()
            clImplementation: 0x713749BCB9d5e39f17E062CB46bC960F08e1ea29 // // v3Factory.poolImplementation()
        });

        unsupported = 0x341e53e3a0642881C589BC9fA1201754D9b9317D;
        outputFilename = 'bsc.json';
    }
}
