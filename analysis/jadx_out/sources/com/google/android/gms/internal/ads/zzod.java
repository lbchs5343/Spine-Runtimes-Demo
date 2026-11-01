package com.google.android.gms.internal.ads;

import android.util.Base64;
import g.fef;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* loaded from: classes3.dex */
public final class zzod implements zzoh {

    /* renamed from: b, reason: collision with root package name */
    public zzog f8809b;

    /* renamed from: c, reason: collision with root package name */
    public zzbv f8810c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbu f8811d;

    /* renamed from: e, reason: collision with root package name */
    public String f8812e;

    /* renamed from: f, reason: collision with root package name */
    public final zzbt f8813f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f8814g;
    public long h;
    public static final zzfxg zza = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzob
        @Override // com.google.android.gms.internal.ads.zzfxg
        public final Object zza() {
            return zzod.zzd();
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public static final Random f8808a = new Random();

    public zzod() {
        throw null;
    }

    public zzod(zzfxg zzfxgVar) {
        this.f8811d = new zzbu();
        this.f8813f = new zzbt();
        this.f8814g = new HashMap();
        this.f8810c = zzbv.zza;
        this.h = -1L;
    }

    public static String zzd() {
        byte[] bArr = new byte[12];
        f8808a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r12 != (-1)) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009d A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final fef i(int i, zzur zzurVar) {
        long j;
        long j2;
        long j3;
        HashMap hashMap = this.f8814g;
        long j4 = Long.MAX_VALUE;
        fef fefVar = null;
        for (fef fefVar2 : hashMap.values()) {
            long j5 = fefVar2.f16651f;
            zzur zzurVar2 = fefVar2.f16646a;
            if (j5 == -1 && i == fefVar2.f16650e && zzurVar != null) {
                zzod zzodVar = fefVar2.f16652g;
                long j6 = zzurVar.zzd;
                j = -1;
                fef fefVar3 = (fef) zzodVar.f8814g.get(zzodVar.f8812e);
                if (fefVar3 != null) {
                    j3 = fefVar3.f16651f;
                }
                j3 = 1 + zzodVar.h;
                if (j6 >= j3) {
                    fefVar2.f16651f = j6;
                }
            } else {
                j = -1;
            }
            if (zzurVar == null) {
                if (i == fefVar2.f16650e) {
                    j2 = fefVar2.f16651f;
                    if (j2 == j || j2 < j4) {
                        fefVar = fefVar2;
                        j4 = j2;
                    } else if (j2 == j4) {
                        int i2 = zzen.zza;
                        if (fefVar.f16646a != null && zzurVar2 != null) {
                            fefVar = fefVar2;
                        }
                    }
                }
            } else if (zzurVar2 == null) {
                if (!zzurVar.zzb() && zzurVar.zzd == fefVar2.f16651f) {
                    j2 = fefVar2.f16651f;
                    if (j2 == j) {
                    }
                    fefVar = fefVar2;
                    j4 = j2;
                }
            } else if (zzurVar.zzd == zzurVar2.zzd && zzurVar.zzb == zzurVar2.zzb && zzurVar.zzc == zzurVar2.zzc) {
                j2 = fefVar2.f16651f;
                if (j2 == j) {
                }
                fefVar = fefVar2;
                j4 = j2;
            }
        }
        if (fefVar != null) {
            return fefVar;
        }
        byte[] bArr = new byte[12];
        f8808a.nextBytes(bArr);
        String encodeToString = Base64.encodeToString(bArr, 10);
        fef fefVar4 = new fef(this, encodeToString, i, zzurVar);
        hashMap.put(encodeToString, fefVar4);
        return fefVar4;
    }

    public final void j(fef fefVar) {
        long j = fefVar.f16651f;
        if (j != -1) {
            this.h = j;
        }
        this.f8812e = null;
    }

    public final void k(zzlx zzlxVar) {
        zzur zzurVar;
        boolean zzo = zzlxVar.zzb.zzo();
        HashMap hashMap = this.f8814g;
        if (zzo) {
            String str = this.f8812e;
            if (str != null) {
                fef fefVar = (fef) hashMap.get(str);
                fefVar.getClass();
                j(fefVar);
                return;
            }
            return;
        }
        fef fefVar2 = (fef) hashMap.get(this.f8812e);
        this.f8812e = i(zzlxVar.zzc, zzlxVar.zzd).f16648c;
        zzi(zzlxVar);
        zzur zzurVar2 = zzlxVar.zzd;
        if (zzurVar2 == null || !zzurVar2.zzb()) {
            return;
        }
        if (fefVar2 != null) {
            if (fefVar2.f16651f == zzurVar2.zzd && (zzurVar = fefVar2.f16646a) != null) {
                int i = zzurVar.zzb;
                zzur zzurVar3 = zzlxVar.zzd;
                if (i == zzurVar3.zzb && zzurVar.zzc == zzurVar3.zzc) {
                    return;
                }
            }
        }
        zzur zzurVar4 = zzlxVar.zzd;
        i(zzlxVar.zzc, new zzur(zzurVar4.zza, zzurVar4.zzd));
    }

    @Override // com.google.android.gms.internal.ads.zzoh
    public final synchronized String zze() {
        return this.f8812e;
    }

    @Override // com.google.android.gms.internal.ads.zzoh
    public final synchronized String zzf(zzbv zzbvVar, zzur zzurVar) {
        return i(zzbvVar.zzn(zzurVar.zza, this.f8813f).zzc, zzurVar).f16648c;
    }

    @Override // com.google.android.gms.internal.ads.zzoh
    public final synchronized void zzg(zzlx zzlxVar) {
        zzog zzogVar;
        try {
            String str = this.f8812e;
            if (str != null) {
                fef fefVar = (fef) this.f8814g.get(str);
                if (fefVar == null) {
                    throw null;
                }
                j(fefVar);
            }
            Iterator it = this.f8814g.values().iterator();
            while (it.hasNext()) {
                fef fefVar2 = (fef) it.next();
                it.remove();
                if (fefVar2.f16647b && (zzogVar = this.f8809b) != null) {
                    zzogVar.zzd(zzlxVar, fefVar2.f16648c, false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoh
    public final void zzh(zzog zzogVar) {
        this.f8809b = zzogVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0033 A[Catch: all -> 0x004c, TryCatch #0 {all -> 0x004c, blocks: (B:3:0x0001, B:5:0x0005, B:11:0x000f, B:13:0x0013, B:15:0x0021, B:18:0x002d, B:20:0x0033, B:22:0x003f, B:24:0x0045, B:27:0x0028, B:28:0x004f, B:30:0x005b, B:31:0x005f, B:33:0x0064, B:35:0x006a, B:37:0x007f, B:38:0x00a3, B:40:0x00a7, B:41:0x00a9, B:43:0x00b3, B:45:0x00b7, B:49:0x00c5), top: B:2:0x0001 }] */
    @Override // com.google.android.gms.internal.ads.zzoh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzi(zzlx zzlxVar) {
        long j;
        try {
            if (this.f8809b == null) {
                throw null;
            }
            if (!zzlxVar.zzb.zzo()) {
                zzur zzurVar = zzlxVar.zzd;
                if (zzurVar != null) {
                    fef fefVar = (fef) this.f8814g.get(this.f8812e);
                    if (fefVar != null) {
                        j = fefVar.f16651f;
                        if (j != -1) {
                            if (zzurVar.zzd >= j) {
                                fef fefVar2 = (fef) this.f8814g.get(this.f8812e);
                                if (fefVar2 == null) {
                                    if (fefVar2.f16651f != -1) {
                                        if (fefVar2.f16650e == zzlxVar.zzc) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    j = this.h + 1;
                    if (zzurVar.zzd >= j) {
                    }
                }
                fef i = i(zzlxVar.zzc, zzlxVar.zzd);
                if (this.f8812e == null) {
                    this.f8812e = i.f16648c;
                }
                zzur zzurVar2 = zzlxVar.zzd;
                if (zzurVar2 != null && zzurVar2.zzb()) {
                    fef i2 = i(zzlxVar.zzc, new zzur(zzurVar2.zza, zzurVar2.zzd, zzurVar2.zzb));
                    if (!i2.f16647b) {
                        i2.f16647b = true;
                        zzbv zzbvVar = zzlxVar.zzb;
                        zzur zzurVar3 = zzlxVar.zzd;
                        zzbvVar.zzn(zzurVar3.zza, this.f8813f);
                        this.f8813f.zzg(zzlxVar.zzd.zzb);
                        Math.max(0L, zzen.zzv(0L) + zzen.zzv(0L));
                    }
                }
                if (!i.f16647b) {
                    i.f16647b = true;
                }
                if (i.f16648c.equals(this.f8812e) && !i.f16649d) {
                    i.f16649d = true;
                    this.f8809b.zzc(zzlxVar, i.f16648c);
                }
            }
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoh
    public final synchronized void zzj(zzlx zzlxVar, int i) {
        try {
            if (this.f8809b == null) {
                throw null;
            }
            Iterator it = this.f8814g.values().iterator();
            while (it.hasNext()) {
                fef fefVar = (fef) it.next();
                if (fefVar.h(zzlxVar)) {
                    it.remove();
                    if (fefVar.f16647b) {
                        boolean equals = fefVar.f16648c.equals(this.f8812e);
                        boolean z = false;
                        if (i == 0 && equals && fefVar.f16649d) {
                            z = true;
                        }
                        if (equals) {
                            j(fefVar);
                        }
                        this.f8809b.zzd(zzlxVar, fefVar.f16648c, z);
                    }
                }
            }
            k(zzlxVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoh
    public final synchronized void zzk(zzlx zzlxVar) {
        try {
            if (this.f8809b == null) {
                throw null;
            }
            zzbv zzbvVar = this.f8810c;
            this.f8810c = zzlxVar.zzb;
            Iterator it = this.f8814g.values().iterator();
            while (it.hasNext()) {
                fef fefVar = (fef) it.next();
                if (fefVar.i(zzbvVar, this.f8810c) && !fefVar.h(zzlxVar)) {
                }
                it.remove();
                if (fefVar.f16647b) {
                    if (fefVar.f16648c.equals(this.f8812e)) {
                        j(fefVar);
                    }
                    this.f8809b.zzd(zzlxVar, fefVar.f16648c, false);
                }
            }
            k(zzlxVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
