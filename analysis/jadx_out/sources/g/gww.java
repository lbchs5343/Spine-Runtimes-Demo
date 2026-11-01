package g;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzadn;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzafv;
import com.google.android.gms.internal.ads.zzdf;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzgd;
import com.google.android.gms.internal.ads.zzgf;
import com.google.android.gms.internal.ads.zzgg;
import com.google.android.gms.internal.ads.zzgi;
import com.google.android.gms.internal.ads.zzhc;
import com.google.android.gms.internal.ads.zztt;
import com.google.android.gms.internal.ads.zzug;
import com.google.android.gms.internal.ads.zzui;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzzb;
import g.fkd;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class gww implements zzzb, zzug {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f18905a;

    /* renamed from: b, reason: collision with root package name */
    public zzgi f18906b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fkd f18907c;

    /* renamed from: d, reason: collision with root package name */
    public final zzvh f18908d;

    /* renamed from: e, reason: collision with root package name */
    public zzadx f18909e;

    /* renamed from: f, reason: collision with root package name */
    public final fkd f18910f;
    public final zzdf h;
    public boolean i;
    public final Uri k;
    public long l;
    public final zzhc m;
    public final zzadn n = new zzadn();
    public boolean j = true;

    /* renamed from: g, reason: collision with root package name */
    public final long f18911g = zzui.zza();

    public gww(fkd fkdVar, Uri uri, zzgd zzgdVar, zztt zzttVar, fkd fkdVar2, zzdf zzdfVar) {
        this.f18907c = fkdVar;
        this.k = uri;
        this.m = new zzhc(zzgdVar);
        this.f18908d = zzttVar;
        this.f18910f = fkdVar2;
        this.h = zzdfVar;
        zzgg zzggVar = new zzgg();
        zzggVar.zzd(uri);
        zzggVar.zzc(0L);
        zzggVar.zza(6);
        zzggVar.zzb(fkd.f16908a);
        this.f18906b = zzggVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zza(zzed zzedVar) {
        long max = !this.i ? this.l : Math.max(this.f18907c.au(true), this.l);
        int zzb = zzedVar.zzb();
        zzadx zzadxVar = this.f18909e;
        zzadxVar.getClass();
        zzadxVar.zzq(zzedVar, zzb);
        zzadxVar.zzs(max, 1, zzb, 0, null);
        this.i = true;
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final void zzg() {
        this.f18905a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00db A[Catch: all -> 0x0186, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f1 A[Catch: all -> 0x0186, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0107 A[Catch: all -> 0x0186, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0123 A[Catch: all -> 0x0186, TRY_LEAVE, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0158 A[Catch: all -> 0x0186, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0169 A[Catch: all -> 0x0186, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019f A[Catch: all -> 0x0186, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a8 A[Catch: all -> 0x0186, TRY_LEAVE, TryCatch #3 {all -> 0x0186, blocks: (B:21:0x00ba, B:106:0x00c5, B:24:0x00d1, B:26:0x00db, B:27:0x00e7, B:29:0x00f1, B:30:0x00fd, B:32:0x0107, B:33:0x0119, B:35:0x0123, B:37:0x0129, B:41:0x0158, B:42:0x015f, B:44:0x0169, B:46:0x016d, B:47:0x018a, B:49:0x019f, B:50:0x01a4, B:52:0x01a8, B:95:0x0133, B:98:0x0149, B:112:0x008b, B:116:0x00a6), top: B:105:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[LOOP:0: B:2:0x0004->B:83:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ee A[EDGE_INSN: B:92:0x01ee->B:73:0x01ee BREAK  A[LOOP:1: B:54:0x01b2->B:65:0x01b2], SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzzb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh() {
        long j;
        boolean z;
        int i;
        List list;
        String str;
        List list2;
        String str2;
        List list3;
        String str3;
        List list4;
        boolean z2;
        List list5;
        int i2;
        zzgd zzgdVar;
        zzafv zzafvVar;
        zzgd zzgdVar2;
        int i3;
        int i4;
        int i5;
        int i6;
        while (!this.f18905a) {
            int i7 = 0;
            try {
                long j2 = this.n.zza;
                zzgg zzggVar = new zzgg();
                zzggVar.zzd(this.k);
                zzggVar.zzc(j2);
                zzggVar.zza(6);
                zzggVar.zzb(fkd.f16908a);
                zzgi zze = zzggVar.zze();
                this.f18906b = zze;
                long zzb = this.m.zzb(zze);
                if (this.f18905a) {
                    zzvh zzvhVar = this.f18908d;
                    if (zzvhVar.zzb() != -1) {
                        this.n.zza = zzvhVar.zzb();
                    }
                    zzgf.zza(this.m);
                    return;
                }
                if (zzb != -1) {
                    zzb += j2;
                    final fkd fkdVar = this.f18907c;
                    fkdVar.ag.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvi
                        @Override // java.lang.Runnable
                        public final void run() {
                            fkd.this.w = true;
                        }
                    });
                }
                long j3 = zzb;
                fkd fkdVar2 = this.f18907c;
                Map zze2 = this.m.zze();
                List list6 = (List) zze2.get("icy-br");
                if (list6 != null) {
                    String str4 = (String) list6.get(0);
                    try {
                        i6 = Integer.parseInt(str4) * 1000;
                    } catch (NumberFormatException unused) {
                        j = -1;
                        i6 = -1;
                    }
                    if (i6 > 0) {
                        j = -1;
                        i = i6;
                        z = true;
                        list = (List) zze2.get("icy-genre");
                        if (list != null) {
                            try {
                                str = (String) list.get(0);
                                z = true;
                            } catch (Throwable th) {
                                th = th;
                                if (i7 != 1) {
                                }
                                zzgf.zza(this.m);
                                throw th;
                            }
                        } else {
                            str = null;
                        }
                        list2 = (List) zze2.get("icy-name");
                        if (list2 != null) {
                            str2 = (String) list2.get(0);
                            z = true;
                        } else {
                            str2 = null;
                        }
                        list3 = (List) zze2.get("icy-url");
                        if (list3 != null) {
                            str3 = (String) list3.get(0);
                            z = true;
                        } else {
                            str3 = null;
                        }
                        list4 = (List) zze2.get("icy-pub");
                        if (list4 != null) {
                            z2 = ((String) list4.get(0)).equals("1");
                            z = true;
                        } else {
                            z2 = false;
                        }
                        list5 = (List) zze2.get("icy-metaint");
                        if (list5 != null) {
                            String str5 = (String) list5.get(0);
                            try {
                                i5 = Integer.parseInt(str5);
                            } catch (NumberFormatException unused2) {
                                i5 = -1;
                            }
                            if (i5 > 0) {
                                i2 = i5;
                                z = true;
                                fkdVar2.f16912d = z ? new zzafv(i, str, str2, str3, z2, i2) : null;
                                zzgdVar = this.m;
                                zzafvVar = this.f18907c.f16912d;
                                if (zzafvVar != null || (i4 = zzafvVar.zzf) == -1) {
                                    zzgdVar2 = zzgdVar;
                                } else {
                                    zzgd dtlVar = new dtl(zzgdVar, i4, this);
                                    zzadx aw = this.f18907c.aw(new evi(0, true));
                                    this.f18909e = aw;
                                    aw.zzl(fkd.f16909b);
                                    zzgdVar2 = dtlVar;
                                }
                                this.f18908d.zzd(zzgdVar2, this.k, this.m.zze(), j2, j3, this.f18910f);
                                if (this.f18907c.f16912d != null) {
                                    this.f18908d.zzc();
                                }
                                if (this.j) {
                                    this.f18908d.zzf(j2, this.l);
                                    this.j = false;
                                }
                                i3 = 0;
                                while (true) {
                                    if (i3 != 0) {
                                        break;
                                    }
                                    try {
                                        if (this.f18905a) {
                                            i3 = 0;
                                            break;
                                        }
                                        try {
                                            this.h.zza();
                                            i3 = this.f18908d.zza(this.n);
                                            long zzb2 = this.f18908d.zzb();
                                            if (zzb2 > this.f18907c.f16915g + j2) {
                                                this.h.zzc();
                                                fkd fkdVar3 = this.f18907c;
                                                fkdVar3.ag.post(fkdVar3.al);
                                                j2 = zzb2;
                                            }
                                        } catch (InterruptedException unused3) {
                                            throw new InterruptedIOException();
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        i7 = i3;
                                        if (i7 != 1) {
                                            zzvh zzvhVar2 = this.f18908d;
                                            if (zzvhVar2.zzb() != j) {
                                                this.n.zza = zzvhVar2.zzb();
                                            }
                                        }
                                        zzgf.zza(this.m);
                                        throw th;
                                    }
                                }
                                if (i3 != 1) {
                                    zzvh zzvhVar3 = this.f18908d;
                                    if (zzvhVar3.zzb() != j) {
                                        this.n.zza = zzvhVar3.zzb();
                                    }
                                    i7 = i3;
                                }
                                zzgf.zza(this.m);
                                if (i7 != 0) {
                                    return;
                                }
                            } else {
                                try {
                                    zzdt.zzf("IcyHeaders", "Invalid metadata interval: " + str5);
                                } catch (NumberFormatException unused4) {
                                    zzdt.zzf("IcyHeaders", "Invalid metadata interval: ".concat(String.valueOf(str5)));
                                    i2 = i5;
                                    fkdVar2.f16912d = z ? new zzafv(i, str, str2, str3, z2, i2) : null;
                                    zzgdVar = this.m;
                                    zzafvVar = this.f18907c.f16912d;
                                    if (zzafvVar != null) {
                                    }
                                    zzgdVar2 = zzgdVar;
                                    this.f18908d.zzd(zzgdVar2, this.k, this.m.zze(), j2, j3, this.f18910f);
                                    if (this.f18907c.f16912d != null) {
                                    }
                                    if (this.j) {
                                    }
                                    i3 = 0;
                                    while (true) {
                                        if (i3 != 0) {
                                        }
                                    }
                                    if (i3 != 1) {
                                    }
                                    zzgf.zza(this.m);
                                    if (i7 != 0) {
                                    }
                                }
                            }
                        }
                        i2 = -1;
                        fkdVar2.f16912d = z ? new zzafv(i, str, str2, str3, z2, i2) : null;
                        zzgdVar = this.m;
                        zzafvVar = this.f18907c.f16912d;
                        if (zzafvVar != null) {
                        }
                        zzgdVar2 = zzgdVar;
                        this.f18908d.zzd(zzgdVar2, this.k, this.m.zze(), j2, j3, this.f18910f);
                        if (this.f18907c.f16912d != null) {
                        }
                        if (this.j) {
                        }
                        i3 = 0;
                        while (true) {
                            if (i3 != 0) {
                            }
                        }
                        if (i3 != 1) {
                        }
                        zzgf.zza(this.m);
                        if (i7 != 0) {
                        }
                    } else {
                        j = -1;
                        try {
                            zzdt.zzf("IcyHeaders", "Invalid bitrate: " + str4);
                        } catch (NumberFormatException unused5) {
                            zzdt.zzf("IcyHeaders", "Invalid bitrate header: ".concat(String.valueOf(str4)));
                            i = i6;
                            z = false;
                            list = (List) zze2.get("icy-genre");
                            if (list != null) {
                            }
                            list2 = (List) zze2.get("icy-name");
                            if (list2 != null) {
                            }
                            list3 = (List) zze2.get("icy-url");
                            if (list3 != null) {
                            }
                            list4 = (List) zze2.get("icy-pub");
                            if (list4 != null) {
                            }
                            list5 = (List) zze2.get("icy-metaint");
                            if (list5 != null) {
                            }
                            i2 = -1;
                            fkdVar2.f16912d = z ? new zzafv(i, str, str2, str3, z2, i2) : null;
                            zzgdVar = this.m;
                            zzafvVar = this.f18907c.f16912d;
                            if (zzafvVar != null) {
                            }
                            zzgdVar2 = zzgdVar;
                            this.f18908d.zzd(zzgdVar2, this.k, this.m.zze(), j2, j3, this.f18910f);
                            if (this.f18907c.f16912d != null) {
                            }
                            if (this.j) {
                            }
                            i3 = 0;
                            while (true) {
                                if (i3 != 0) {
                                }
                            }
                            if (i3 != 1) {
                            }
                            zzgf.zza(this.m);
                            if (i7 != 0) {
                            }
                        }
                    }
                } else {
                    j = -1;
                }
                z = false;
                i = -1;
                list = (List) zze2.get("icy-genre");
                if (list != null) {
                }
                list2 = (List) zze2.get("icy-name");
                if (list2 != null) {
                }
                list3 = (List) zze2.get("icy-url");
                if (list3 != null) {
                }
                list4 = (List) zze2.get("icy-pub");
                if (list4 != null) {
                }
                list5 = (List) zze2.get("icy-metaint");
                if (list5 != null) {
                }
                i2 = -1;
                fkdVar2.f16912d = z ? new zzafv(i, str, str2, str3, z2, i2) : null;
                zzgdVar = this.m;
                zzafvVar = this.f18907c.f16912d;
                if (zzafvVar != null) {
                }
                zzgdVar2 = zzgdVar;
                this.f18908d.zzd(zzgdVar2, this.k, this.m.zze(), j2, j3, this.f18910f);
                if (this.f18907c.f16912d != null) {
                }
                if (this.j) {
                }
                i3 = 0;
                while (true) {
                    if (i3 != 0) {
                    }
                }
                if (i3 != 1) {
                }
                zzgf.zza(this.m);
                if (i7 != 0) {
                }
            } catch (Throwable th3) {
                th = th3;
                j = -1;
            }
        }
    }
}
