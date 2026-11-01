package com.bytedance.sdk.openadsdk.mediation.init.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.hat;

/* loaded from: classes3.dex */
public class ox {
    public static final ValueSet dq(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
        hat f2 = hat.f();
        if (mediationConfigUserInfoForSegment == null) {
            return null;
        }
        f2.m(265007, mediationConfigUserInfoForSegment.getCustomInfos());
        f2.n(265001, mediationConfigUserInfoForSegment.getUserId());
        f2.n(265002, mediationConfigUserInfoForSegment.getChannel());
        f2.n(265003, mediationConfigUserInfoForSegment.getSubChannel());
        f2.o(265004, mediationConfigUserInfoForSegment.getAge());
        f2.n(265005, mediationConfigUserInfoForSegment.getGender());
        f2.n(265006, mediationConfigUserInfoForSegment.getUserValueGroup());
        return f2.k();
    }
}
