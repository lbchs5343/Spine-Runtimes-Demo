package com.bytedance.sdk.gromore.dq.dq.s;

/* loaded from: classes.dex */
public class mn {
    public static void dq(com.bytedance.msdk.api.ox.dq dqVar, String str) {
        com.bytedance.msdk.dq.s.ox.d("TMe_reward", "RewardUtils  ".concat(String.valueOf(str)));
        if (dqVar == null) {
            com.bytedance.msdk.dq.s.ox.d("TMe_reward", "rewardItem is null ");
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TMe_reward", "rewardItem.getRewardName " + dqVar.ox());
        com.bytedance.msdk.dq.s.ox.d("TMe_reward", "rewardItem.getAmount " + dqVar.d());
        com.bytedance.msdk.dq.s.ox.d("TMe_reward", "rewardItem.getCustomData() " + dqVar.p());
        com.bytedance.msdk.dq.s.ox.d("TMe_reward", "rewardItem.rewardVerify() " + dqVar.dq());
    }
}
