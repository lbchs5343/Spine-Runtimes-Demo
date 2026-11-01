package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import g.agd;
import g.ayy;
import g.edt;
import g.esy;
import g.ti;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzces extends zzcbw implements zzhd, zzlz {
    public static final /* synthetic */ int zza = 0;

    /* renamed from: c, reason: collision with root package name */
    public final zzvv f5235c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5236d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f5237e;

    /* renamed from: f, reason: collision with root package name */
    public final WeakReference f5238f;
    public long h;
    public ByteBuffer i;
    public final Context j;
    public zzcbv k;
    public boolean l;
    public volatile zzcef m;
    public Integer n;
    public final zzced o;
    public final zzyb p;
    public zzlu r;
    public int s;
    public final int t;
    public int u;
    public final zzcce v;
    public final Object q = new Object();

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f5239g = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00df, code lost:
    
        if (((java.lang.Boolean) r1.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzbW)).booleanValue() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e2, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00eb, code lost:
    
        if (r5.zzl == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ed, code lost:
    
        r6 = new com.google.android.gms.internal.ads.zzcej(r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0104, code lost:
    
        if (r5.zzi == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0106, code lost:
    
        r5 = new com.google.android.gms.internal.ads.zzcem(r3, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x010e, code lost:
    
        r4 = r3.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0110, code lost:
    
        if (r4 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0116, code lost:
    
        if (r4.limit() <= 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0118, code lost:
    
        r4 = new byte[r3.i.limit()];
        r3.i.get(r4);
        r5 = new com.google.android.gms.internal.ads.zzcen(r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010d, code lost:
    
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f5, code lost:
    
        if (r5.zzh <= 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f7, code lost:
    
        r6 = new com.google.android.gms.internal.ads.zzcek(r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fd, code lost:
    
        r6 = new com.google.android.gms.internal.ads.zzcel(r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e6, code lost:
    
        if (r5.zzi == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzces(Context context, zzcce zzcceVar, zzccf zzccfVar, Integer num) {
        final zzgc zzgcVar;
        this.j = context;
        this.v = zzcceVar;
        this.n = num;
        this.f5238f = new WeakReference(zzccfVar);
        zzced zzcedVar = new zzced();
        this.o = zzcedVar;
        zzyb zzybVar = new zzyb(context);
        this.p = zzybVar;
        if (agd.h()) {
            agd.e("SimpleExoPlayerAdapter initialize ".concat(toString()));
        }
        zzcbw.f5157a.incrementAndGet();
        zzlt zzltVar = new zzlt(context, new zzcep(this));
        zzltVar.zzb(zzybVar);
        zzltVar.zza(zzcedVar);
        zzlu zzc = zzltVar.zzc();
        this.r = zzc;
        zzc.zzy(this);
        final boolean z = false;
        this.u = 0;
        this.h = 0L;
        this.s = 0;
        this.f5237e = new ArrayList();
        this.m = null;
        this.f5236d = (String) zzfwo.zzd(zzccfVar != null ? zzccfVar.zzr() : null).zzb("");
        this.t = zzccfVar != null ? zzccfVar.zzf() : 0;
        final String at = ti.f20033a.z.at(context, zzccfVar.zzn().afmaVersion);
        if (!this.l || this.i.limit() <= 0) {
            zzbce zzbceVar = zzbcn.zzce;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            }
        } else {
            final byte[] bArr = new byte[this.i.limit()];
            this.i.get(bArr);
            zzgcVar = new zzgc() { // from class: com.google.android.gms.internal.ads.zzceh
                @Override // com.google.android.gms.internal.ads.zzgc
                public final zzgd zza() {
                    return new zzfy(bArr);
                }
            };
        }
        this.f5235c = new zzvv(zzgcVar, new zzvu(((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzl)).booleanValue() ? new zzacw() { // from class: com.google.android.gms.internal.ads.zzcer
            @Override // com.google.android.gms.internal.ads.zzacw
            public final /* synthetic */ zzacr[] zza(Uri uri, Map map) {
                int i = zzces.zza;
                return new zzacr[]{new zzaiy(), new zzahq(), new zzait(zzakg.zza, 32, null, null, zzfzo.zzn(), null)};
            }
        } : new zzacw() { // from class: com.google.android.gms.internal.ads.zzcei
            @Override // com.google.android.gms.internal.ads.zzacw
            public final /* synthetic */ zzacr[] zza(Uri uri, Map map) {
                int i = zzces.zza;
                return new zzacr[]{new zzaiy(), new zzahq()};
            }
        }));
    }

    public final void finalize() {
        zzcbw.f5157a.decrementAndGet();
        if (agd.h()) {
            agd.e("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final long zzA() {
        if (this.m == null || !this.m.zzq()) {
            return this.u;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final long zzB() {
        if (this.m != null && this.m.zzq()) {
            return this.m.zzl();
        }
        synchronized (this.q) {
            while (!this.f5237e.isEmpty()) {
                long j = this.h;
                Map zze = ((zzgy) this.f5237e.remove(0)).zze();
                long j2 = 0;
                if (zze != null) {
                    Iterator it = zze.entrySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry entry = (Map.Entry) it.next();
                        if (entry != null) {
                            try {
                                if (entry.getKey() != null && zzfwa.zzc("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                    j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                    break;
                                }
                            } catch (NumberFormatException unused) {
                                continue;
                            }
                        }
                    }
                }
                this.h = j + j2;
            }
        }
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final Integer zzC() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzF(Uri[] uriArr, String str) {
        zzG(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzG(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzut zzvgVar;
        if (this.r != null) {
            this.i = byteBuffer;
            this.l = z;
            int length = uriArr.length;
            zzcce zzcceVar = this.v;
            zzvv zzvvVar = this.f5235c;
            if (length == 1) {
                Uri uri = uriArr[0];
                zzak zzakVar = new zzak();
                zzakVar.zzb(uri);
                zzaw zzc = zzakVar.zzc();
                zzvvVar.zza(zzcceVar.zzf);
                zzvgVar = zzvvVar.zzb(zzc);
            } else {
                zzut[] zzutVarArr = new zzut[length];
                for (int i = 0; i < uriArr.length; i++) {
                    Uri uri2 = uriArr[i];
                    zzak zzakVar2 = new zzak();
                    zzakVar2.zzb(uri2);
                    zzaw zzc2 = zzakVar2.zzc();
                    zzvvVar.zza(zzcceVar.zzf);
                    zzutVarArr[i] = zzvvVar.zzb(zzc2);
                }
                zzvgVar = new zzvg(false, false, new zzuc(), zzutVarArr);
            }
            this.r.zzB(zzvgVar);
            this.r.zzp();
            zzcbw.f5158b.incrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzH() {
        zzlu zzluVar = this.r;
        if (zzluVar != null) {
            zzluVar.zzA(this);
            this.r.zzz();
            this.r = null;
            zzcbw.f5158b.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzI(long j) {
        zzlu zzluVar = this.r;
        zzluVar.zza(zzluVar.zzd(), j, 5, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzJ(int i) {
        this.o.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzK(int i) {
        this.o.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzL(zzcbv zzcbvVar) {
        this.k = zzcbvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzM(int i) {
        this.o.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzN(int i) {
        this.o.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzO(boolean z) {
        this.r.zzq(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzP(Integer num) {
        this.n = num;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzQ(boolean z) {
        if (this.r == null) {
            return;
        }
        int i = 0;
        while (true) {
            this.r.zzx();
            if (i >= 2) {
                return;
            }
            zzyb zzybVar = this.p;
            zzxo zzc = zzybVar.zzf().zzc();
            zzc.zzp(i, !z);
            zzybVar.zzl(zzc);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzR(int i) {
        Iterator it = this.f5239g.iterator();
        while (it.hasNext()) {
            ayy ayyVar = (ayy) ((WeakReference) it.next()).get();
            if (ayyVar != null) {
                ayyVar.j = i;
                Iterator it2 = ayyVar.p.iterator();
                while (it2.hasNext()) {
                    Socket socket = (Socket) it2.next();
                    if (!socket.isClosed()) {
                        try {
                            socket.setReceiveBufferSize(ayyVar.j);
                        } catch (SocketException unused) {
                            zzfxd zzfxdVar = agd.f10175a;
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzS(Surface surface, boolean z) {
        zzlu zzluVar = this.r;
        if (zzluVar != null) {
            zzluVar.zzr(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzT(float f2, boolean z) {
        zzlu zzluVar = this.r;
        if (zzluVar != null) {
            zzluVar.zzs(f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final void zzU() {
        this.r.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final boolean zzV() {
        return this.r != null;
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zza(zzgd zzgdVar, zzgi zzgiVar, boolean z, int i) {
        this.u += i;
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzb(zzgd zzgdVar, zzgi zzgiVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzc(zzgd zzgdVar, zzgi zzgiVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzd(zzgd zzgdVar, zzgi zzgiVar, boolean z) {
        if (zzgdVar instanceof zzgy) {
            synchronized (this.q) {
                this.f5237e.add((zzgy) zzgdVar);
            }
        } else if (zzgdVar instanceof zzcef) {
            this.m = (zzcef) zzgdVar;
            final zzccf zzccfVar = (zzccf) this.f5238f.get();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue() && zzccfVar != null && this.m.zzn()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.m.zzp()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.m.zzo()));
                esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzceo
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = zzces.zza;
                        zzccf.this.zzd("onGcacheInfoEvent", hashMap);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zze(zzlx zzlxVar, zzad zzadVar, zzhy zzhyVar) {
        zzccf zzccfVar = (zzccf) this.f5238f.get();
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue() || zzccfVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        String str = zzadVar.zzn;
        if (str != null) {
            hashMap.put("audioMime", str);
        }
        String str2 = zzadVar.zzo;
        if (str2 != null) {
            hashMap.put("audioSampleMime", str2);
        }
        String str3 = zzadVar.zzk;
        if (str3 != null) {
            hashMap.put("audioCodec", str3);
        }
        zzccfVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzf(zzlx zzlxVar, int i, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzg(zzlx zzlxVar, zzun zzunVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzh(zzlx zzlxVar, int i, long j) {
        this.s += i;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzi(zzbp zzbpVar, zzly zzlyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzj(zzlx zzlxVar, zzui zzuiVar, zzun zzunVar, IOException iOException, boolean z) {
        zzcbv zzcbvVar = this.k;
        if (zzcbvVar != null) {
            if (this.v.zzj) {
                zzcbvVar.zzl("onLoadException", iOException);
            } else {
                zzcbvVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzk(zzlx zzlxVar, int i) {
        zzcbv zzcbvVar = this.k;
        if (zzcbvVar != null) {
            zzcbvVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzl(zzlx zzlxVar, zzbi zzbiVar) {
        zzcbv zzcbvVar = this.k;
        if (zzcbvVar != null) {
            zzcbvVar.zzk("onPlayerError", zzbiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzm(zzlx zzlxVar, zzbn zzbnVar, zzbn zzbnVar2, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzn(zzlx zzlxVar, Object obj, long j) {
        zzcbv zzcbvVar = this.k;
        if (zzcbvVar != null) {
            zzcbvVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzo(zzlx zzlxVar, zzhx zzhxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzp(zzlx zzlxVar, zzad zzadVar, zzhy zzhyVar) {
        zzccf zzccfVar = (zzccf) this.f5238f.get();
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue() || zzccfVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzadVar.zzw));
        hashMap.put("bitRate", String.valueOf(zzadVar.zzj));
        hashMap.put("resolution", zzadVar.zzu + "x" + zzadVar.zzv);
        String str = zzadVar.zzn;
        if (str != null) {
            hashMap.put("videoMime", str);
        }
        String str2 = zzadVar.zzo;
        if (str2 != null) {
            hashMap.put("videoSampleMime", str2);
        }
        String str3 = zzadVar.zzk;
        if (str3 != null) {
            hashMap.put("videoCodec", str3);
        }
        zzccfVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzq(zzlx zzlxVar, zzci zzciVar) {
        zzcbv zzcbvVar = this.k;
        if (zzcbvVar != null) {
            zzcbvVar.zzD(zzciVar.zzb, zzciVar.zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final int zzr() {
        return this.s;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final int zzt() {
        return this.r.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final long zzv() {
        return this.r.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final long zzw() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final long zzx() {
        if (this.m != null && this.m.zzq() && this.m.zzp()) {
            return Math.min(this.u, this.m.zzk());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final long zzy() {
        return this.r.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcbw
    public final long zzz() {
        return this.r.zzl();
    }
}
