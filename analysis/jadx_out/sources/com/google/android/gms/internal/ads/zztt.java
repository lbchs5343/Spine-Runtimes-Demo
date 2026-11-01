package com.google.android.gms.internal.ads;

import android.net.Uri;
import g.tn;
import java.io.EOFException;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zztt implements zzvh {

    /* renamed from: a, reason: collision with root package name */
    public final zzacw f8890a;

    /* renamed from: b, reason: collision with root package name */
    public zzacr f8891b;

    /* renamed from: c, reason: collision with root package name */
    public zzacg f8892c;

    public zztt(zzacw zzacwVar) {
        this.f8890a = zzacwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final int zza(zzadn zzadnVar) throws IOException {
        zzacr zzacrVar = this.f8891b;
        zzacrVar.getClass();
        zzacg zzacgVar = this.f8892c;
        zzacgVar.getClass();
        return zzacrVar.zzb(zzacgVar, zzadnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final long zzb() {
        zzacg zzacgVar = this.f8892c;
        if (zzacgVar != null) {
            return zzacgVar.zzf();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void zzc() {
        zzacr zzacrVar = this.f8891b;
        if (zzacrVar != null && (zzacrVar instanceof zzahw)) {
            ((zzahw) zzacrVar).zza();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004d, code lost:
    
        if (r1.zzf() != r11) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
    
        if (r1.zzf() != r11) goto L24;
     */
    @Override // com.google.android.gms.internal.ads.zzvh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd(zzn zznVar, Uri uri, Map map, long j, long j2, zzacu zzacuVar) throws IOException {
        zzacg zzacgVar = new zzacg(zznVar, j, j2);
        this.f8892c = zzacgVar;
        if (this.f8891b != null) {
            return;
        }
        zzacr[] zza = this.f8890a.zza(uri, map);
        int length = zza.length;
        zzfzl zzi = zzfzo.zzi(length);
        if (length == 1) {
            this.f8891b = zza[0];
        } else {
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                zzacr zzacrVar = zza[i];
                try {
                } catch (EOFException unused) {
                    if (this.f8891b == null) {
                    }
                } catch (Throwable th) {
                    zzdb.zzf(this.f8891b != null || zzacgVar.zzf() == j);
                    zzacgVar.zzj();
                    throw th;
                }
                if (zzacrVar.zzi(zzacgVar)) {
                    this.f8891b = zzacrVar;
                    zzdb.zzf(true);
                    zzacgVar.zzj();
                    break;
                } else {
                    zzi.zzh(zzacrVar.zzd());
                    if (this.f8891b == null) {
                    }
                    boolean z = true;
                    zzdb.zzf(z);
                    zzacgVar.zzj();
                    i++;
                }
            }
            if (this.f8891b == null) {
                Iterator it = zzgae.zzb(zzfzo.zzm(zza), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzts
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj) {
                        zzacr zzacrVar2 = (zzacr) obj;
                        zzacrVar2.zzc();
                        return zzacrVar2.getClass().getSimpleName();
                    }
                }).iterator();
                StringBuilder sb = new StringBuilder();
                zzfwi.zzc(sb, it, ", ");
                throw new zzws(tn.ad("None of the available extractors (", sb.toString(), ") could read the stream."), uri, zzi.zzi());
            }
        }
        this.f8891b.zze(zzacuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void zze() {
        if (this.f8891b != null) {
            this.f8891b = null;
        }
        this.f8892c = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void zzf(long j, long j2) {
        zzacr zzacrVar = this.f8891b;
        zzacrVar.getClass();
        zzacrVar.zzf(j, j2);
    }
}
