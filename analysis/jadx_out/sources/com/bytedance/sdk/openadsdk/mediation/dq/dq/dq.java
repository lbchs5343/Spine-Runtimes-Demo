package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import g.hat;

/* loaded from: classes3.dex */
public class dq extends com.bytedance.sdk.openadsdk.f.dq.ox.d {
    public static final ValueSet dq(AdSlot adSlot) {
        hat e2 = hat.e(com.bytedance.sdk.openadsdk.f.dq.ox.d.d(adSlot));
        if (adSlot != null && adSlot.getMediationAdSlot() != null) {
            e2.m(8260028, new s(adSlot.getMediationAdSlot()));
        }
        return e2.k();
    }

    public static AdSlot dq(ValueSet valueSet) {
        AdSlot.Builder builder = new AdSlot.Builder();
        if (valueSet != null) {
            builder.setAdId(valueSet.stringValue(260001)).setCodeId(valueSet.stringValue(260002)).setExt(valueSet.stringValue(260003)).setCodeId(valueSet.stringValue(260004)).setIsAutoPlay(valueSet.booleanValue(260005)).setImageAcceptedSize(valueSet.intValue(260006), valueSet.intValue(260007)).setExpressViewAcceptedSize(valueSet.floatValue(260008), valueSet.floatValue(260009)).setSupportDeepLink(valueSet.booleanValue(260010)).setAdCount(valueSet.intValue(2600012)).setMediaExtra(valueSet.stringValue(260013)).setUserID(valueSet.stringValue(260014)).setExternalABVid((int[]) valueSet.objectValue(260017, int[].class)).setAdloadSeq(valueSet.intValue(260018)).setPrimeRit(valueSet.stringValue(260019)).setAdType(valueSet.intValue(260020)).withBid(valueSet.stringValue(260021)).setUserData(valueSet.stringValue(260022)).setAdLoadType((TTAdLoadType) valueSet.objectValue(260023, TTAdLoadType.class)).setMediationAdSlot((IMediationAdSlot) valueSet.objectValue(260027, IMediationAdSlot.class)).setOrientation(valueSet.intValue(260015)).setRewardName((String) valueSet.objectValue(260024, String.class)).setRewardAmount(valueSet.intValue(260025));
            if (valueSet.booleanValue(260011)) {
                builder.supportRenderControl();
            }
        }
        return builder.build();
    }
}
