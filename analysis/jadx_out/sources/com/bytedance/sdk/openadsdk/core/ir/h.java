package com.bytedance.sdk.openadsdk.core.ir;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class h {
    public static final d.dq d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        return new d.dq(dVar);
    }

    public static int dq(JSONObject jSONObject, String str, int i) {
        return jSONObject.has(str) ? jSONObject.optInt(str, i) : ((Integer) com.bytedance.sdk.openadsdk.core.wp.d().dq(str, (String) Integer.valueOf(i))).intValue();
    }

    public static long dq(JSONObject jSONObject, String str, long j) {
        return jSONObject.has(str) ? jSONObject.optLong(str, j) : ((Long) com.bytedance.sdk.openadsdk.core.wp.d().dq(str, (String) Long.valueOf(j))).longValue();
    }

    private static final d.dq dq() {
        return new d.dq().ox(1).d(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME).dq(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK).d(true).iw("defaultUser").p(2).dq(true);
    }

    public static com.bytedance.sdk.openadsdk.f.d.ox.d dq(int i) {
        return dq().mn(i).dq();
    }

    public static com.bytedance.sdk.openadsdk.f.d.ox.d dq(int i, ValueSet valueSet) {
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar = new com.bytedance.sdk.openadsdk.f.d.ox.d(valueSet);
        d.dq dqVar = new d.dq(dVar);
        float no = dVar.no();
        float ig = dVar.ig();
        if (no <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            no = ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), dVar.kk());
            ig = ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), dVar.o());
        }
        if (no > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || ig > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            int p = (int) (ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), ce.s(com.bytedance.sdk.openadsdk.core.wp.getContext())) * 1.3d);
            int p2 = (int) (ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext())) * 1.3d);
            int max = Math.max(p, p2);
            int min = Math.min(p, p2);
            if (no > ig) {
                if (p2 > 0) {
                    float f2 = max;
                    if (no > f2) {
                        ig = min;
                        no = f2;
                    }
                }
            } else if (p > 0) {
                float f3 = max;
                if (ig > f3) {
                    no = min;
                    ig = f3;
                }
            }
        }
        dqVar.dq(no).d(ig);
        return d(dqVar.dq()).mn(i).dq();
    }

    public static com.bytedance.sdk.openadsdk.f.d.ox.d dq(int i, String str, float f2, float f3) {
        return dq().p(str).mn(i).d(f3).dq(f2).dq();
    }

    public static com.bytedance.sdk.openadsdk.f.d.ox.d dq(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            d.dq dqVar = new d.dq();
            dqVar.dq(jSONObject.optString("mAdId", ""));
            dqVar.d(jSONObject.optString("mCreativeId", ""));
            dqVar.ox(jSONObject.optString("mExt", ""));
            dqVar.p(jSONObject.optString("mCodeId", ""));
            dqVar.kk(jSONObject.optString("mUserData"));
            dqVar.dq(jSONObject.optBoolean("mIsAutoPlay", true));
            int optInt = jSONObject.optInt("mImgAcceptedWidth", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
            dqVar.d(jSONObject.optInt("mImgAcceptedHeight", MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME));
            dqVar.dq(optInt);
            double optDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double optDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            dqVar.d(Double.valueOf(optDouble).floatValue());
            dqVar.dq(Double.valueOf(optDouble2).floatValue());
            dqVar.d(jSONObject.optBoolean("mSupportDeepLink", true));
            dqVar.ox(jSONObject.optInt("mAdCount", 1));
            dqVar.s(jSONObject.optString("mMediaExtra", ""));
            dqVar.iw(jSONObject.optString("mUserID", ""));
            dqVar.p(jSONObject.optInt("mOrientation", 2));
            dqVar.s(jSONObject.optInt("mNativeAdType"));
            dqVar.dq(c.no(jSONObject.optString("mExternalABVid", "")));
            dqVar.iw(jSONObject.optInt("mAdLoadSeq", 0));
            dqVar.mn(jSONObject.optString("mPrimeRit", ""));
            dqVar.ia(jSONObject.optString("mBidAdm"));
            dqVar.ia(jSONObject.optInt("mRewardAmount", 0));
            dqVar.o(jSONObject.optString("mRewardName", ""));
            return dqVar.dq();
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        return dq(dVar, dVar.mn());
    }

    public static JSONObject dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mAdId", dVar.p());
            jSONObject.put("mCreativeId", dVar.s());
            jSONObject.put("mExt", dVar.iw());
            jSONObject.put("mCodeId", str);
            jSONObject.put("mUserData", dVar.e());
            jSONObject.put("mIsAutoPlay", dVar.ia());
            jSONObject.put("mImgAcceptedWidth", dVar.kk());
            jSONObject.put("mImgAcceptedHeight", dVar.o());
            jSONObject.put("mExpressViewAcceptedWidth", dVar.no());
            jSONObject.put("mExpressViewAcceptedHeight", dVar.ig());
            jSONObject.put("mSupportDeepLink", dVar.mp());
            jSONObject.put("mSupportRenderControl", dVar.q());
            if (com.bytedance.sdk.openadsdk.core.op.f3334d >= 5900) {
                jSONObject.put("mSupportIconStyle", dVar.bl());
            }
            jSONObject.put("mAdCount", dVar.jy());
            jSONObject.put("mMediaExtra", dVar.f());
            jSONObject.put("mUserID", dVar.fw());
            jSONObject.put("mOrientation", dVar.cd());
            jSONObject.put("mNativeAdType", dVar.gh());
            jSONObject.put("mExternalABVid", c.dq(dVar.r()));
            jSONObject.put("mAdLoadSeq", dVar.i());
            jSONObject.put("mPrimeRit", dVar.le());
            jSONObject.put("mBidAdm", dVar.wp());
            jSONObject.put("mRewardAmount", dVar.ji());
            jSONObject.put("mRewardName", dVar.h());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static boolean dq(JSONObject jSONObject, String str, boolean z) {
        return jSONObject.has(str) ? jSONObject.optBoolean(str, z) : ((Boolean) com.bytedance.sdk.openadsdk.core.wp.d().dq(str, (String) Boolean.valueOf(z))).booleanValue();
    }
}
