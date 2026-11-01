package com.google.android.gms.internal.ads;

import g.dat;
import g.eve;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class zzfxk {
    public static zzfxg zza(zzfxg zzfxgVar) {
        return ((zzfxgVar instanceof dat) || (zzfxgVar instanceof eve)) ? zzfxgVar : zzfxgVar instanceof Serializable ? new eve(zzfxgVar) : new dat(zzfxgVar);
    }
}
