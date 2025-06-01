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
            v2Factory: 0xd4603DE52a29ABa9B046B248ea7d0ac69801548c, // Aerodrome PoolFactory
            v3Factory: 0x7A3027f7A2f9241c0634a7f6950D2D8270aC0563, // Aerodrome CLFactory
            v2Implementation: 0x9c5b51Fa892FF06b3d2e9389aBdda91D47A538CB, // v2Factory.implementation()
            clImplementation: 0x612e163b2336bAf23e33214F8a030058E1E9086f  // v3Factory.poolImplementation()
        });

        unsupported = 0x341e53e3a0642881C589BC9fA1201754D9b9317D;
        outputFilename = 'bsc.json';
    }
}
