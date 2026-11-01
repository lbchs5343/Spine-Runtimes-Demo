package com.google.android.gms.internal.ads;

import java.io.Closeable;

/* loaded from: classes3.dex */
public abstract class zzfsm implements Closeable {
    public static zzfsy zza() {
        return new zzfsy(new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfso
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return -1;
            }
        }, new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfsp
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return -1;
            }
        }, null);
    }

    public static zzfsy zzb(final int i, zzfsx zzfsxVar) {
        return new zzfsy(new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfsk
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return Integer.valueOf(i);
            }
        }, new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfsl
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return -1;
            }
        }, zzfsxVar);
    }

    public static zzfsy zzc(zzfxg<Integer> zzfxgVar, zzfxg<Integer> zzfxgVar2, zzfsx zzfsxVar) {
        return new zzfsy(zzfxgVar, zzfxgVar2, zzfsxVar);
    }
}
