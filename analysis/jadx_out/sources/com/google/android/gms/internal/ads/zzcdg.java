package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.agd;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzcdg implements zzbjr {
    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        zzccf zzccfVar = (zzccf) obj;
        zzcgm zzq = zzccfVar.zzq();
        if (zzq == null) {
            try {
                zzcgm zzcgmVar = new zzcgm(zzccfVar, Float.parseFloat((String) map.get(MediationConstant.EXTRA_DURATION)), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                zzccfVar.zzC(zzcgmVar);
                zzq = zzcgmVar;
            } catch (NullPointerException e2) {
                e = e2;
                Throwable th = e;
                agd.f("Unable to parse videoMeta message.", th);
                ti.f20033a.f20034ab.zzw(th, "VideoMetaGmsgHandler.onGmsg");
                return;
            } catch (NumberFormatException e3) {
                e = e3;
                Throwable th2 = e;
                agd.f("Unable to parse videoMeta message.", th2);
                ti.f20033a.f20034ab.zzw(th2, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat = Float.parseFloat((String) map.get(MediationConstant.EXTRA_DURATION));
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat2 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        if (parseInt < 0 || parseInt > 3) {
            parseInt = 0;
        }
        String str = (String) map.get("aspectRatio");
        float parseFloat3 = TextUtils.isEmpty(str) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : Float.parseFloat(str);
        if (agd.i(3)) {
            agd.c("Video Meta GMSG: currentTime : " + parseFloat2 + " , duration : " + parseFloat + " , isMuted : " + equals + " , playbackState : " + parseInt + " , aspectRatio : " + str);
        }
        zzq.zzc(parseFloat2, parseFloat, parseInt, equals, parseFloat3);
    }
}
