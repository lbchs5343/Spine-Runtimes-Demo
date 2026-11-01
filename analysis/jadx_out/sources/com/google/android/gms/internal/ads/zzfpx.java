package com.google.android.gms.internal.ads;

import android.content.Context;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import g.fzn;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzfpx {
    public static zzata zza(Context context, String str, String str2) {
        zzata zzataVar;
        try {
            zzataVar = (zzata) ((LinkedBlockingQueue) new fzn(context, str, str2).f17731f).poll(PushUIConfig.dismissTime, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzataVar = null;
        }
        return zzataVar == null ? fzn.m() : zzataVar;
    }
}
