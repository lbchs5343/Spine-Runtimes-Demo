package com.google.android.gms.internal.ads;

import android.net.Uri;
import g.awf;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgi {
    public static final /* synthetic */ int zzh = 0;
    public final Uri zza;
    public final int zzb;
    public final byte[] zzc;
    public final Map zzd;
    public final long zze;
    public final long zzf;
    public final int zzg;

    static {
        zzax.zzb("media3.datasource");
    }

    @Deprecated
    public zzgi(Uri uri, long j, long j2, String str) {
        this(uri, Collections.EMPTY_MAP, j, j2, 0);
    }

    public zzgi(Uri uri, Map map, long j, long j2, int i) {
        boolean z = false;
        boolean z2 = j >= 0;
        zzdb.zzd(z2);
        zzdb.zzd(z2);
        if (j2 <= 0) {
            j2 = j2 == -1 ? -1L : j2;
            zzdb.zzd(z);
            uri.getClass();
            this.zza = uri;
            this.zzb = 1;
            this.zzc = null;
            this.zzd = Collections.unmodifiableMap(new HashMap(map));
            this.zze = j;
            this.zzf = j2;
            this.zzg = i;
        }
        z = true;
        zzdb.zzd(z);
        uri.getClass();
        this.zza = uri;
        this.zzb = 1;
        this.zzc = null;
        this.zzd = Collections.unmodifiableMap(new HashMap(map));
        this.zze = j;
        this.zzf = j2;
        this.zzg = i;
    }

    public final String toString() {
        StringBuilder p = awf.p("DataSpec[GET ", this.zza.toString(), ", ");
        p.append(this.zze);
        p.append(", ");
        p.append(this.zzf);
        p.append(", null, ");
        return awf.x(p, this.zzg, "]");
    }

    public final zzgg zza() {
        return new zzgg(this);
    }

    public final boolean zzb(int i) {
        return (this.zzg & i) == i;
    }
}
