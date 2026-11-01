package com.google.android.gms.internal.ads;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import g.fdy;

/* loaded from: classes3.dex */
public final class zzaqw {
    public static zzaps zza(Context context, zzaqd zzaqdVar) {
        zzaps zzapsVar = new zzaps(new zzaql(new fdy(context.getApplicationContext()), AVMDLDataLoaderConfigure.DEFAULT_MAX_FACTORY_MEMORY_SIZE), zzaqdVar == null ? new zzaqe(new zzaqq(null, null)) : new zzaqe(zzaqdVar), 4);
        zzapsVar.zzd();
        return zzapsVar;
    }
}
