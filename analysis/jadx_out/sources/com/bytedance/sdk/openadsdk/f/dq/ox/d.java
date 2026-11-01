package com.bytedance.sdk.openadsdk.f.dq.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    public static final ValueSet d(final AdSlot adSlot) {
        hat f2 = hat.f();
        if (adSlot == null) {
            return null;
        }
        f2.n(260001, adSlot.getAdId());
        f2.n(260002, adSlot.getCreativeId());
        f2.n(260003, adSlot.getExt());
        f2.n(260004, adSlot.getCodeId());
        f2.i(260005, adSlot.isAutoPlay());
        f2.o(260006, adSlot.getImgAcceptedWidth());
        f2.o(260007, adSlot.getImgAcceptedHeight());
        f2.l(260008, adSlot.getExpressViewAcceptedWidth());
        f2.l(260009, adSlot.getExpressViewAcceptedHeight());
        f2.i(260010, adSlot.isSupportDeepLink());
        f2.i(260011, adSlot.isSupportRenderConrol());
        f2.o(2600012, adSlot.getAdCount());
        f2.n(260013, adSlot.getMediaExtra());
        f2.n(260014, adSlot.getUserID());
        f2.o(260015, adSlot.getOrientation());
        f2.o(260016, adSlot.getNativeAdType());
        f2.m(260017, adSlot.getExternalABVid());
        f2.o(260018, adSlot.getAdloadSeq());
        f2.n(260019, adSlot.getPrimeRit());
        f2.o(260020, adSlot.getAdType());
        f2.n(260021, adSlot.getBidAdm());
        f2.n(260022, adSlot.getUserData());
        f2.m(260023, adSlot.getAdLoadType());
        f2.m(260024, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.d.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return AdSlot.this.getRewardName();
            }
        });
        f2.m(260025, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.d.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(AdSlot.this.getRewardAmount());
            }
        });
        f2.m(260026, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.dq.ox.d.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(AdSlot.this.isSupportIconStyle());
            }
        });
        f2.m(8260028, adSlot.getMediationAdSlot());
        return f2.k();
    }
}
