package com.bytedance.sdk.gromore.dq.dq.ox;

import android.os.Bundle;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class p {
    public static Bundle dq(com.bytedance.msdk.api.ox.dq dqVar) {
        Bundle bundle = new Bundle();
        if (dqVar != null) {
            float d2 = dqVar.d();
            String ox = dqVar.ox();
            Map<String, Object> p = dqVar.p();
            if (p == null) {
                p = new HashMap<>();
            }
            Object obj = p.get(MediationConstant.KEY_EXTRA_INFO);
            if (obj instanceof Bundle) {
                Bundle bundle2 = (Bundle) obj;
                bundle2.putFloat(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT, d2);
                bundle2.putString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME, ox);
                return bundle2;
            }
            bundle.putString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME, ox);
            bundle.putFloat(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT, d2);
            Object obj2 = p.get(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY);
            if (obj2 instanceof Boolean) {
                bundle.putBoolean(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, ((Boolean) obj2).booleanValue());
            }
            Object obj3 = p.get(MediationConstant.KEY_TRANS_ID);
            if (obj3 instanceof String) {
                bundle.putString(MediationConstant.KEY_TRANS_ID, (String) obj3);
            }
            Object obj4 = p.get(MediationConstant.KEY_REASON);
            if (obj4 instanceof Integer) {
                bundle.putInt(MediationConstant.KEY_REASON, ((Integer) obj4).intValue());
            }
            Object obj5 = p.get("gromoreExtra");
            if (obj5 instanceof String) {
                bundle.putString("gromoreExtra", (String) obj5);
            }
            Object obj6 = p.get(MediationConstant.KEY_ERROR_CODE);
            if (obj6 instanceof Integer) {
                bundle.putInt(MediationConstant.KEY_ERROR_CODE, ((Integer) obj6).intValue());
            }
            Object obj7 = p.get(MediationConstant.KEY_ERROR_MSG);
            if (obj7 instanceof String) {
                bundle.putString(MediationConstant.KEY_ERROR_MSG, (String) obj7);
            }
            Object obj8 = p.get(MediationConstant.KEY_ADN_NAME);
            if (obj8 instanceof String) {
                bundle.putString(MediationConstant.KEY_ADN_NAME, (String) obj8);
            }
        }
        return bundle;
    }
}
