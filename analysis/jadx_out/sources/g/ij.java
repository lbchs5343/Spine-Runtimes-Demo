package g;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzacl;
import com.google.android.gms.internal.ads.zzah;
import com.google.android.gms.internal.ads.zzaw;
import com.google.android.gms.internal.ads.zzax;
import com.google.android.gms.internal.ads.zzay;
import com.google.android.gms.internal.ads.zzba;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzbl;
import com.google.android.gms.internal.ads.zzbn;
import com.google.android.gms.internal.ads.zzbt;
import com.google.android.gms.internal.ads.zzbu;
import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzcd;
import com.google.android.gms.internal.ads.zzci;
import com.google.android.gms.internal.ads.zzcu;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzdf;
import com.google.android.gms.internal.ads.zzdm;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdq;
import com.google.android.gms.internal.ads.zzds;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzee;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzg;
import com.google.android.gms.internal.ads.zzi;
import com.google.android.gms.internal.ads.zzig;
import com.google.android.gms.internal.ads.zzip;
import com.google.android.gms.internal.ads.zziq;
import com.google.android.gms.internal.ads.zzir;
import com.google.android.gms.internal.ads.zzja;
import com.google.android.gms.internal.ads.zzjd;
import com.google.android.gms.internal.ads.zzjw;
import com.google.android.gms.internal.ads.zzke;
import com.google.android.gms.internal.ads.zzki;
import com.google.android.gms.internal.ads.zzkl;
import com.google.android.gms.internal.ads.zzlj;
import com.google.android.gms.internal.ads.zzln;
import com.google.android.gms.internal.ads.zzlr;
import com.google.android.gms.internal.ads.zzls;
import com.google.android.gms.internal.ads.zzlu;
import com.google.android.gms.internal.ads.zzlw;
import com.google.android.gms.internal.ads.zzlz;
import com.google.android.gms.internal.ads.zzoj;
import com.google.android.gms.internal.ads.zzq;
import com.google.android.gms.internal.ads.zzue;
import com.google.android.gms.internal.ads.zzur;
import com.google.android.gms.internal.ads.zzut;
import com.google.android.gms.internal.ads.zzwj;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyd;
import com.google.android.gms.internal.ads.zzyj;
import com.google.android.gms.internal.ads.zzyk;
import com.google.android.gms.internal.ads.zzyv;
import g.gzx;
import g.ij;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class ij extends zzi implements zzir {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f19424b = 0;
    public final zzyk aa;

    /* renamed from: ab, reason: collision with root package name */
    public final zzds f19425ab;
    public final zzdc ac;
    public zzee ad;
    public int ae;
    public zzba af;
    public final zzbl ag;
    public long ah;
    public boolean ai;
    public zzba aj;
    public final zzyj ak;
    public final gdw al;

    /* renamed from: c, reason: collision with root package name */
    public Surface f19426c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdm f19427d;

    /* renamed from: e, reason: collision with root package name */
    public final zzbt f19428e;

    /* renamed from: f, reason: collision with root package name */
    public int f19429f;

    /* renamed from: g, reason: collision with root package name */
    public final Looper f19430g;
    public Object h;
    public gzx i;
    public final zzlw j;
    public final zzdf k;
    public float l;
    public final ArrayList m;
    public final zzlu n;
    public int o;
    public final boolean p;
    public boolean q;
    public zzwj r;
    public boolean s;
    public zzbl t;
    public final zzln[] u;
    public final zzjd v;
    public final long w;
    public final zzyv x;
    public final boolean y;
    public final com.google.android.gms.internal.ads.s z;

    static {
        zzax.zzb("media3.exoplayer");
    }

    public ij(zzip zzipVar, zzlu zzluVar) {
        zzdf zzdfVar = new zzdf(zzdc.zza);
        this.k = zzdfVar;
        try {
            zzdt.zze("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.5.0-alpha01] [" + zzen.zze + "]");
            Context context = zzipVar.h;
            String str = zzipVar.j;
            Context applicationContext = context.getApplicationContext();
            zzlw zzlwVar = (zzlw) zzipVar.f8767a.apply(zzipVar.n);
            this.j = zzlwVar;
            int i = zzipVar.o;
            zzg zzgVar = zzipVar.f8768b;
            int i2 = zzipVar.f8772f;
            this.q = false;
            this.w = zzipVar.k;
            eec eecVar = new eec(this);
            Object czdVar = new czd();
            Handler handler = new Handler(zzipVar.m);
            zzln[] zza = zzipVar.r.zza.zza(handler, eecVar, eecVar, eecVar, eecVar);
            this.u = zza;
            int length = zza.length;
            zzyj zzyjVar = (zzyj) zzipVar.f8773g.zza();
            this.ak = zzyjVar;
            new zzue(zzipVar.f8771e.zza, new zzacl());
            zzyv zzh = zzyv.zzh(zzipVar.s.zza);
            this.x = zzh;
            this.y = zzipVar.l;
            zzls zzlsVar = zzipVar.f8770d;
            Looper looper = zzipVar.m;
            this.f19430g = looper;
            zzdc zzdcVar = zzipVar.n;
            this.ac = zzdcVar;
            this.n = zzluVar;
            zzds zzdsVar = new zzds(looper, zzdcVar, new zzdq(this) { // from class: com.google.android.gms.internal.ads.zzjc
                @Override // com.google.android.gms.internal.ads.zzdq
                public final void zza(Object obj, zzz zzzVar) {
                }
            });
            this.f19425ab = zzdsVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.m = new ArrayList();
            this.r = new zzwj(0);
            zziq zziqVar = zziq.zza;
            zzyk zzykVar = new zzyk(new zzlr[2], new zzyd[2], zzcd.zza, null);
            this.aa = zzykVar;
            this.f19428e = new zzbt();
            zzbk zzbkVar = new zzbk();
            zzbkVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zzyjVar.zzn();
            zzbkVar.zzd(29, true);
            zzbkVar.zzd(23, false);
            zzbkVar.zzd(25, false);
            zzbkVar.zzd(33, false);
            zzbkVar.zzd(26, false);
            zzbkVar.zzd(34, false);
            zzbl zze = zzbkVar.zze();
            this.ag = zze;
            zzbk zzbkVar2 = new zzbk();
            zzbkVar2.zzb(zze);
            zzbkVar2.zza(4);
            zzbkVar2.zza(10);
            this.t = zzbkVar2.zze();
            this.f19427d = zzdcVar.zzd(looper, null);
            zzjd zzjdVar = new zzjd(this);
            this.v = zzjdVar;
            this.i = gzx.u(zzykVar);
            zzlwVar.zzS(zzluVar, looper);
            this.z = new com.google.android.gms.internal.ads.s(zza, zzyjVar, zzykVar, (zzkl) zzipVar.i.zza(), zzh, zzlwVar, zzlsVar, zzipVar.q, zzipVar.f8769c, looper, zzdcVar, zzjdVar, zzen.zza < 31 ? new zzoj(str) : dli.a(applicationContext, this, zzipVar.p, str), zziqVar);
            this.l = 1.0f;
            zzba zzbaVar = zzba.zza;
            this.aj = zzbaVar;
            this.af = zzbaVar;
            this.f19429f = -1;
            AudioManager audioManager = (AudioManager) applicationContext.getSystemService(MediaFormat.KEY_AUDIO);
            int generateAudioSessionId = audioManager == null ? -1 : audioManager.generateAudioSessionId();
            int i3 = zzcu.zza;
            this.p = true;
            zzdsVar.zzb(zzlwVar);
            zzh.zzf(new Handler(looper), zzlwVar);
            copyOnWriteArraySet.add(eecVar);
            context.getApplicationContext();
            new ane(handler);
            this.al = new gdw(context, handler, eecVar);
            context.getApplicationContext();
            context.getApplicationContext();
            new zzq(0).zza();
            zzci zzciVar = zzci.zza;
            this.ad = zzee.zza;
            zzyjVar.zzk(zzgVar);
            an(1, 10, Integer.valueOf(generateAudioSessionId));
            an(2, 10, Integer.valueOf(generateAudioSessionId));
            an(1, 3, zzgVar);
            an(2, 4, Integer.valueOf(i2));
            an(2, 5, 0);
            an(1, 9, Boolean.valueOf(this.q));
            an(2, 7, czdVar);
            an(6, 8, czdVar);
            an(-1, 16, Integer.valueOf(i));
            zzdfVar.zze();
        } catch (Throwable th) {
            this.k.zze();
            throw th;
        }
    }

    public static long am(gzx gzxVar) {
        zzbu zzbuVar = new zzbu();
        zzbt zzbtVar = new zzbt();
        gzxVar.i.zzn(gzxVar.o.zza, zzbtVar);
        long j = gzxVar.r;
        if (j != -9223372036854775807L) {
            return j;
        }
        long j2 = gzxVar.i.zze(zzbtVar.zzc, zzbuVar, 0L).zzl;
        return 0L;
    }

    public final void an(int i, int i2, Object obj) {
        zzln[] zzlnVarArr = this.u;
        int length = zzlnVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzln zzlnVar = zzlnVarArr[i3];
            if (i == -1 || zzlnVar.zzb() == i) {
                int ar = ar(this.i);
                zzbv zzbvVar = this.i.i;
                int i4 = ar == -1 ? 0 : ar;
                com.google.android.gms.internal.ads.s sVar = this.z;
                zzlj zzljVar = new zzlj(sVar, zzlnVar, zzbvVar, i4, this.ac, sVar.t);
                zzljVar.zzf(i2);
                zzljVar.zze(obj);
                zzljVar.zzd();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v4 */
    public final void ao(int i, int i2, boolean z) {
        ?? r14 = (!z || i == -1) ? 0 : 1;
        int i3 = i == 0 ? 1 : 0;
        gzx gzxVar = this.i;
        if (gzxVar.f19079g == r14 && gzxVar.f19077e == i3 && gzxVar.m == i2) {
            return;
        }
        this.ae++;
        gzx ab2 = gzxVar.ab(i2, i3, r14);
        this.z.ah.zzd(1, r14, i2 | (i3 << 4)).zza();
        ap(ab2, 0, false, 5, -9223372036854775807L, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x048b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0495 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x049f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x04b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00e9  */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v4, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ap(final gzx gzxVar, final int i, boolean z, int i2, long j, int i3) {
        final int i4;
        boolean z2;
        Pair pair;
        boolean z3;
        boolean z4;
        int i5;
        boolean booleanValue;
        final zzaw zzawVar;
        List list;
        zzbv zzn;
        zzba zzu;
        boolean z5;
        int zzf;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        zzyk zzykVar;
        zzyk zzykVar2;
        zzbl zzblVar;
        zzlu zzluVar;
        boolean z10;
        zzbv zzn2;
        boolean z11;
        int i6;
        boolean z12;
        ?? r13;
        zzbv zzn3;
        boolean z13;
        zzbv zzn4;
        boolean z14;
        long j2;
        boolean z15;
        int i7;
        boolean z16;
        zzbl zze;
        int i8;
        Object obj;
        zzaw zzawVar2;
        Object obj2;
        int i9;
        long j3;
        long am;
        Object obj3;
        zzaw zzawVar3;
        Object obj4;
        int i10;
        int i11 = i2;
        gzx gzxVar2 = this.i;
        this.i = gzxVar;
        boolean equals = gzxVar2.i.equals(gzxVar.i);
        zzbv zzbvVar = gzxVar2.i;
        zzbv zzbvVar2 = gzxVar.i;
        if (zzbvVar2.zzo() && zzbvVar.zzo()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else {
            if (zzbvVar2.zzo() == zzbvVar.zzo()) {
                if (zzbvVar.zze(zzbvVar.zzn(gzxVar2.o.zza, this.f19428e).zzc, this.f8752a, 0L).zzb.equals(zzbvVar2.zze(zzbvVar2.zzn(gzxVar.o.zza, this.f19428e).zzc, this.f8752a, 0L).zzb)) {
                    if (!z) {
                        i4 = i11;
                        z2 = false;
                    } else if (i11 != 0) {
                        i4 = i11;
                        z2 = true;
                    } else if (gzxVar2.o.zzd < gzxVar.o.zzd) {
                        pair = new Pair(Boolean.TRUE, 0);
                        z2 = true;
                        i4 = 0;
                    } else {
                        z2 = true;
                        i4 = 0;
                    }
                    pair = new Pair(Boolean.FALSE, -1);
                } else {
                    if (!z) {
                        z3 = false;
                        z4 = false;
                    } else if (i11 == 0) {
                        i11 = 0;
                        z3 = true;
                        i5 = 1;
                        pair = new Pair(Boolean.TRUE, Integer.valueOf(i5));
                        boolean z17 = z3;
                        i4 = i11;
                        z2 = z17;
                    } else {
                        z3 = true;
                        z4 = true;
                    }
                    if (z3 && i11 == 1) {
                        z3 = z4;
                        i5 = 2;
                    } else {
                        if (equals) {
                            throw new IllegalStateException();
                        }
                        i5 = 3;
                    }
                    pair = new Pair(Boolean.TRUE, Integer.valueOf(i5));
                    boolean z172 = z3;
                    i4 = i11;
                    z2 = z172;
                }
                booleanValue = ((Boolean) pair.first).booleanValue();
                final int intValue = ((Integer) pair.second).intValue();
                if (booleanValue) {
                    zzawVar = null;
                } else {
                    zzawVar = !gzxVar.i.zzo() ? gzxVar.i.zze(gzxVar.i.zzn(gzxVar.o.zza, this.f19428e).zzc, this.f8752a, 0L).zzd : null;
                    this.af = zzba.zza;
                }
                if (!booleanValue || !gzxVar2.p.equals(gzxVar.p)) {
                    zzay zza = this.af.zza();
                    list = gzxVar.p;
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        zzbd zzbdVar = (zzbd) list.get(i12);
                        for (int i13 = 0; i13 < zzbdVar.zza(); i13++) {
                            zzbdVar.zzb(i13).zza(zza);
                        }
                    }
                    this.af = zza.zzu();
                }
                zzn = zzn();
                if (zzn.zzo()) {
                    zzaw zzawVar4 = zzn.zze(zzd(), this.f8752a, 0L).zzd;
                    zzay zza2 = this.af.zza();
                    zza2.zzb(zzawVar4.zzd);
                    zzu = zza2.zzu();
                } else {
                    zzu = this.af;
                }
                boolean equals2 = zzu.equals(this.aj);
                this.aj = zzu;
                boolean z18 = gzxVar2.f19079g == gzxVar.f19079g;
                z5 = gzxVar2.h == gzxVar.h;
                if ((!z5 || z18) && ((zzf = zzf()) == 2 || zzf == 3)) {
                    at();
                    this.i.getClass();
                    zzu();
                    zzu();
                }
                z6 = gzxVar2.s == gzxVar.s;
                if (!equals) {
                    this.f19425ab.zzd(0, new zzdp() { // from class: com.google.android.gms.internal.ads.zzis
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj5) {
                            int i14 = ij.f19424b;
                            ((zzbm) obj5).zzp(gzx.this.i, i);
                        }
                    });
                }
                if (z2) {
                    z7 = booleanValue;
                    z8 = z18;
                    z9 = equals2;
                } else {
                    zzbt zzbtVar = new zzbt();
                    if (gzxVar2.i.zzo()) {
                        z7 = booleanValue;
                        z8 = z18;
                        z9 = equals2;
                        i8 = i3;
                        obj = null;
                        zzawVar2 = null;
                        obj2 = null;
                        i9 = -1;
                    } else {
                        Object obj5 = gzxVar2.o.zza;
                        gzxVar2.i.zzn(obj5, zzbtVar);
                        int i14 = zzbtVar.zzc;
                        int zza3 = gzxVar2.i.zza(obj5);
                        z7 = booleanValue;
                        z8 = z18;
                        z9 = equals2;
                        obj = gzxVar2.i.zze(i14, this.f8752a, 0L).zzb;
                        zzawVar2 = this.f8752a.zzd;
                        obj2 = obj5;
                        i8 = i14;
                        i9 = zza3;
                    }
                    if (i4 == 0) {
                        if (gzxVar2.o.zzb()) {
                            zzur zzurVar = gzxVar2.o;
                            j3 = zzbtVar.zzf(zzurVar.zzb, zzurVar.zzc);
                            am = am(gzxVar2);
                            int i15 = zzen.zza;
                            zzur zzurVar2 = gzxVar2.o;
                            final zzbn zzbnVar = new zzbn(obj, i8, zzawVar2, obj2, i9, zzen.zzv(j3), zzen.zzv(am), zzurVar2.zzb, zzurVar2.zzc);
                            int zzd = zzd();
                            if (this.i.i.zzo()) {
                                gzx gzxVar3 = this.i;
                                Object obj6 = gzxVar3.o.zza;
                                gzxVar3.i.zzn(obj6, this.f19428e);
                                i10 = this.i.i.zza(obj6);
                                obj4 = obj6;
                                obj3 = this.i.i.zze(zzd, this.f8752a, 0L).zzb;
                                zzawVar3 = this.f8752a.zzd;
                            } else {
                                obj3 = null;
                                zzawVar3 = null;
                                obj4 = null;
                                i10 = -1;
                            }
                            long zzv = zzen.zzv(j);
                            long zzv2 = !this.i.o.zzb() ? zzen.zzv(am(this.i)) : zzv;
                            zzur zzurVar3 = this.i.o;
                            final zzbn zzbnVar2 = new zzbn(obj3, zzd, zzawVar3, obj4, i10, zzv, zzv2, zzurVar3.zzb, zzurVar3.zzc);
                            this.f19425ab.zzd(11, new zzdp() { // from class: com.google.android.gms.internal.ads.zzji
                                @Override // com.google.android.gms.internal.ads.zzdp
                                public final void zza(Object obj7) {
                                    int i16 = ij.f19424b;
                                    ((zzbm) obj7).zzm(zzbnVar, zzbnVar2, i4);
                                }
                            });
                        } else {
                            j3 = gzxVar2.o.zze != -1 ? am(this.i) : zzbtVar.zzd;
                            am = j3;
                            int i152 = zzen.zza;
                            zzur zzurVar22 = gzxVar2.o;
                            final zzbn zzbnVar3 = new zzbn(obj, i8, zzawVar2, obj2, i9, zzen.zzv(j3), zzen.zzv(am), zzurVar22.zzb, zzurVar22.zzc);
                            int zzd2 = zzd();
                            if (this.i.i.zzo()) {
                            }
                            long zzv3 = zzen.zzv(j);
                            if (!this.i.o.zzb()) {
                            }
                            zzur zzurVar32 = this.i.o;
                            final zzbn zzbnVar22 = new zzbn(obj3, zzd2, zzawVar3, obj4, i10, zzv3, zzv2, zzurVar32.zzb, zzurVar32.zzc);
                            this.f19425ab.zzd(11, new zzdp() { // from class: com.google.android.gms.internal.ads.zzji
                                @Override // com.google.android.gms.internal.ads.zzdp
                                public final void zza(Object obj7) {
                                    int i16 = ij.f19424b;
                                    ((zzbm) obj7).zzm(zzbnVar3, zzbnVar22, i4);
                                }
                            });
                        }
                    } else if (gzxVar2.o.zzb()) {
                        j3 = gzxVar2.t;
                        am = am(gzxVar2);
                        int i1522 = zzen.zza;
                        zzur zzurVar222 = gzxVar2.o;
                        final zzbn zzbnVar32 = new zzbn(obj, i8, zzawVar2, obj2, i9, zzen.zzv(j3), zzen.zzv(am), zzurVar222.zzb, zzurVar222.zzc);
                        int zzd22 = zzd();
                        if (this.i.i.zzo()) {
                        }
                        long zzv32 = zzen.zzv(j);
                        if (!this.i.o.zzb()) {
                        }
                        zzur zzurVar322 = this.i.o;
                        final zzbn zzbnVar222 = new zzbn(obj3, zzd22, zzawVar3, obj4, i10, zzv32, zzv2, zzurVar322.zzb, zzurVar322.zzc);
                        this.f19425ab.zzd(11, new zzdp() { // from class: com.google.android.gms.internal.ads.zzji
                            @Override // com.google.android.gms.internal.ads.zzdp
                            public final void zza(Object obj7) {
                                int i16 = ij.f19424b;
                                ((zzbm) obj7).zzm(zzbnVar32, zzbnVar222, i4);
                            }
                        });
                    } else {
                        j3 = gzxVar2.t;
                        am = j3;
                        int i15222 = zzen.zza;
                        zzur zzurVar2222 = gzxVar2.o;
                        final zzbn zzbnVar322 = new zzbn(obj, i8, zzawVar2, obj2, i9, zzen.zzv(j3), zzen.zzv(am), zzurVar2222.zzb, zzurVar2222.zzc);
                        int zzd222 = zzd();
                        if (this.i.i.zzo()) {
                        }
                        long zzv322 = zzen.zzv(j);
                        if (!this.i.o.zzb()) {
                        }
                        zzur zzurVar3222 = this.i.o;
                        final zzbn zzbnVar2222 = new zzbn(obj3, zzd222, zzawVar3, obj4, i10, zzv322, zzv2, zzurVar3222.zzb, zzurVar3222.zzc);
                        this.f19425ab.zzd(11, new zzdp() { // from class: com.google.android.gms.internal.ads.zzji
                            @Override // com.google.android.gms.internal.ads.zzdp
                            public final void zza(Object obj7) {
                                int i16 = ij.f19424b;
                                ((zzbm) obj7).zzm(zzbnVar322, zzbnVar2222, i4);
                            }
                        });
                    }
                }
                if (!z7) {
                    this.f19425ab.zzd(1, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjj
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzd(zzaw.this, intValue);
                        }
                    });
                }
                if (gzxVar2.j != gzxVar.j) {
                    this.f19425ab.zzd(10, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjk
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzk(gzx.this.j);
                        }
                    });
                    if (gzxVar.j != null) {
                        this.f19425ab.zzd(10, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjl
                            @Override // com.google.android.gms.internal.ads.zzdp
                            public final void zza(Object obj7) {
                                int i16 = ij.f19424b;
                                ((zzbm) obj7).zzj(gzx.this.j);
                            }
                        });
                    }
                }
                zzykVar = gzxVar2.n;
                zzykVar2 = gzxVar.n;
                if (zzykVar != zzykVar2) {
                    this.ak.zzp(zzykVar2.zze);
                    this.f19425ab.zzd(2, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjm
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzq(gzx.this.n.zzd);
                        }
                    });
                }
                if (!z9) {
                    final zzba zzbaVar = this.aj;
                    this.f19425ab.zzd(14, new zzdp() { // from class: com.google.android.gms.internal.ads.zzit
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zze(zzba.this);
                        }
                    });
                }
                if (z6) {
                    this.f19425ab.zzd(3, new zzdp() { // from class: com.google.android.gms.internal.ads.zziu
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzb(gzx.this.s);
                        }
                    });
                }
                if (!z5 || z8) {
                    this.f19425ab.zzd(-1, new zzdp() { // from class: com.google.android.gms.internal.ads.zziv
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            gzx gzxVar4 = gzx.this;
                            ((zzbm) obj7).zzl(gzxVar4.f19079g, gzxVar4.h);
                        }
                    });
                }
                if (z5) {
                    this.f19425ab.zzd(4, new zzdp() { // from class: com.google.android.gms.internal.ads.zziw
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzh(gzx.this.h);
                        }
                    });
                }
                if (!z8 || gzxVar2.m != gzxVar.m) {
                    this.f19425ab.zzd(5, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjb
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            gzx gzxVar4 = gzx.this;
                            ((zzbm) obj7).zzf(gzxVar4.f19079g, gzxVar4.m);
                        }
                    });
                }
                if (gzxVar2.f19077e != gzxVar.f19077e) {
                    this.f19425ab.zzd(6, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjf
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzi(gzx.this.f19077e);
                        }
                    });
                }
                if (gzxVar2.v() != gzxVar.v()) {
                    this.f19425ab.zzd(7, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjg
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzc(gzx.this.v());
                        }
                    });
                }
                if (!gzxVar2.f19076d.equals(gzxVar.f19076d)) {
                    this.f19425ab.zzd(12, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjh
                        @Override // com.google.android.gms.internal.ads.zzdp
                        public final void zza(Object obj7) {
                            int i16 = ij.f19424b;
                            ((zzbm) obj7).zzg(gzx.this.f19076d);
                        }
                    });
                }
                zzblVar = this.t;
                zzluVar = this.n;
                zzbl zzblVar2 = this.ag;
                int i16 = zzen.zza;
                boolean zzw = zzluVar.zzw();
                zzbv zzn5 = zzluVar.zzn();
                z10 = zzn5.zzo() && zzn5.zze(zzluVar.zzd(), zzluVar.f8752a, 0L).zzh;
                zzn2 = zzluVar.zzn();
                if (zzn2.zzo()) {
                    int zzd3 = zzluVar.zzd();
                    zzluVar.zzh();
                    zzluVar.zzv();
                    z11 = false;
                    r13 = 0;
                    int zzk = zzn2.zzk(zzd3, 0, false);
                    i6 = -1;
                    if (zzk != -1) {
                        z12 = true;
                        zzn3 = zzluVar.zzn();
                        if (!zzn3.zzo()) {
                            int zzd4 = zzluVar.zzd();
                            zzluVar.zzh();
                            zzluVar.zzv();
                            if (zzn3.zzj(zzd4, r13, r13) != i6) {
                                z13 = true;
                                zzn4 = zzluVar.zzn();
                                if (zzn4.zzo()) {
                                    z14 = zzw;
                                    j2 = 0;
                                    if (zzn4.zze(zzluVar.zzd(), zzluVar.f8752a, 0L).zzb()) {
                                        z15 = true;
                                        zzbv zzn6 = zzluVar.zzn();
                                        boolean z19 = zzn6.zzo() && zzn6.zze(zzluVar.zzd(), zzluVar.f8752a, j2).zzi;
                                        boolean zzo = zzluVar.zzn().zzo();
                                        zzbk zzbkVar = new zzbk();
                                        zzbkVar.zzb(zzblVar2);
                                        boolean z20 = !z14;
                                        zzbkVar.zzd(4, z20);
                                        zzbkVar.zzd(5, (z10 || z14) ? false : true);
                                        zzbkVar.zzd(6, (z12 || z14) ? false : true);
                                        zzbkVar.zzd(7, zzo && (z12 || !z15 || z10) && !z14);
                                        zzbkVar.zzd(8, (z13 || z14) ? false : true);
                                        zzbkVar.zzd(9, zzo && (z13 || (z15 && z19)) && !z14);
                                        zzbkVar.zzd(10, z20);
                                        zzbkVar.zzd(11, (z10 || z14) ? false : true);
                                        if (z10 || z14) {
                                            i7 = 12;
                                            z16 = false;
                                        } else {
                                            i7 = 12;
                                            z16 = true;
                                        }
                                        zzbkVar.zzd(i7, z16);
                                        zze = zzbkVar.zze();
                                        this.t = zze;
                                        if (!zze.equals(zzblVar)) {
                                            this.f19425ab.zzd(13, new zzdp() { // from class: com.google.android.gms.internal.ads.zzje
                                                @Override // com.google.android.gms.internal.ads.zzdp
                                                public final void zza(Object obj7) {
                                                    ((zzbm) obj7).zza(ij.this.t);
                                                }
                                            });
                                        }
                                        this.f19425ab.zzc();
                                    }
                                } else {
                                    z14 = zzw;
                                    j2 = 0;
                                }
                                z15 = false;
                                zzbv zzn62 = zzluVar.zzn();
                                if (zzn62.zzo()) {
                                }
                                boolean zzo2 = zzluVar.zzn().zzo();
                                zzbk zzbkVar2 = new zzbk();
                                zzbkVar2.zzb(zzblVar2);
                                boolean z202 = !z14;
                                zzbkVar2.zzd(4, z202);
                                zzbkVar2.zzd(5, (z10 || z14) ? false : true);
                                zzbkVar2.zzd(6, (z12 || z14) ? false : true);
                                zzbkVar2.zzd(7, zzo2 && (z12 || !z15 || z10) && !z14);
                                zzbkVar2.zzd(8, (z13 || z14) ? false : true);
                                zzbkVar2.zzd(9, zzo2 && (z13 || (z15 && z19)) && !z14);
                                zzbkVar2.zzd(10, z202);
                                zzbkVar2.zzd(11, (z10 || z14) ? false : true);
                                if (z10) {
                                }
                                i7 = 12;
                                z16 = false;
                                zzbkVar2.zzd(i7, z16);
                                zze = zzbkVar2.zze();
                                this.t = zze;
                                if (!zze.equals(zzblVar)) {
                                }
                                this.f19425ab.zzc();
                            }
                        }
                        z13 = false;
                        zzn4 = zzluVar.zzn();
                        if (zzn4.zzo()) {
                        }
                        z15 = false;
                        zzbv zzn622 = zzluVar.zzn();
                        if (zzn622.zzo()) {
                        }
                        boolean zzo22 = zzluVar.zzn().zzo();
                        zzbk zzbkVar22 = new zzbk();
                        zzbkVar22.zzb(zzblVar2);
                        boolean z2022 = !z14;
                        zzbkVar22.zzd(4, z2022);
                        zzbkVar22.zzd(5, (z10 || z14) ? false : true);
                        zzbkVar22.zzd(6, (z12 || z14) ? false : true);
                        zzbkVar22.zzd(7, zzo22 && (z12 || !z15 || z10) && !z14);
                        zzbkVar22.zzd(8, (z13 || z14) ? false : true);
                        zzbkVar22.zzd(9, zzo22 && (z13 || (z15 && z19)) && !z14);
                        zzbkVar22.zzd(10, z2022);
                        zzbkVar22.zzd(11, (z10 || z14) ? false : true);
                        if (z10) {
                        }
                        i7 = 12;
                        z16 = false;
                        zzbkVar22.zzd(i7, z16);
                        zze = zzbkVar22.zze();
                        this.t = zze;
                        if (!zze.equals(zzblVar)) {
                        }
                        this.f19425ab.zzc();
                    }
                } else {
                    i6 = -1;
                    z11 = false;
                }
                z12 = false;
                r13 = z11;
                zzn3 = zzluVar.zzn();
                if (!zzn3.zzo()) {
                }
                z13 = false;
                zzn4 = zzluVar.zzn();
                if (zzn4.zzo()) {
                }
                z15 = false;
                zzbv zzn6222 = zzluVar.zzn();
                if (zzn6222.zzo()) {
                }
                boolean zzo222 = zzluVar.zzn().zzo();
                zzbk zzbkVar222 = new zzbk();
                zzbkVar222.zzb(zzblVar2);
                boolean z20222 = !z14;
                zzbkVar222.zzd(4, z20222);
                zzbkVar222.zzd(5, (z10 || z14) ? false : true);
                zzbkVar222.zzd(6, (z12 || z14) ? false : true);
                zzbkVar222.zzd(7, zzo222 && (z12 || !z15 || z10) && !z14);
                zzbkVar222.zzd(8, (z13 || z14) ? false : true);
                zzbkVar222.zzd(9, zzo222 && (z13 || (z15 && z19)) && !z14);
                zzbkVar222.zzd(10, z20222);
                zzbkVar222.zzd(11, (z10 || z14) ? false : true);
                if (z10) {
                }
                i7 = 12;
                z16 = false;
                zzbkVar222.zzd(i7, z16);
                zze = zzbkVar222.zze();
                this.t = zze;
                if (!zze.equals(zzblVar)) {
                }
                this.f19425ab.zzc();
            }
            pair = new Pair(Boolean.TRUE, 3);
        }
        i4 = i11;
        z2 = z;
        booleanValue = ((Boolean) pair.first).booleanValue();
        final int intValue2 = ((Integer) pair.second).intValue();
        if (booleanValue) {
        }
        if (!booleanValue) {
        }
        zzay zza4 = this.af.zza();
        list = gzxVar.p;
        while (i12 < list.size()) {
        }
        this.af = zza4.zzu();
        zzn = zzn();
        if (zzn.zzo()) {
        }
        boolean equals22 = zzu.equals(this.aj);
        this.aj = zzu;
        if (gzxVar2.f19079g == gzxVar.f19079g) {
        }
        if (gzxVar2.h == gzxVar.h) {
        }
        if (!z5) {
        }
        at();
        this.i.getClass();
        zzu();
        zzu();
        if (gzxVar2.s == gzxVar.s) {
        }
        if (!equals) {
        }
        if (z2) {
        }
        if (!z7) {
        }
        if (gzxVar2.j != gzxVar.j) {
        }
        zzykVar = gzxVar2.n;
        zzykVar2 = gzxVar.n;
        if (zzykVar != zzykVar2) {
        }
        if (!z9) {
        }
        if (z6) {
        }
        if (!z5) {
        }
        this.f19425ab.zzd(-1, new zzdp() { // from class: com.google.android.gms.internal.ads.zziv
            @Override // com.google.android.gms.internal.ads.zzdp
            public final void zza(Object obj7) {
                int i162 = ij.f19424b;
                gzx gzxVar4 = gzx.this;
                ((zzbm) obj7).zzl(gzxVar4.f19079g, gzxVar4.h);
            }
        });
        if (z5) {
        }
        if (!z8) {
        }
        this.f19425ab.zzd(5, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjb
            @Override // com.google.android.gms.internal.ads.zzdp
            public final void zza(Object obj7) {
                int i162 = ij.f19424b;
                gzx gzxVar4 = gzx.this;
                ((zzbm) obj7).zzf(gzxVar4.f19079g, gzxVar4.m);
            }
        });
        if (gzxVar2.f19077e != gzxVar.f19077e) {
        }
        if (gzxVar2.v() != gzxVar.v()) {
        }
        if (!gzxVar2.f19076d.equals(gzxVar.f19076d)) {
        }
        zzblVar = this.t;
        zzluVar = this.n;
        zzbl zzblVar22 = this.ag;
        int i162 = zzen.zza;
        boolean zzw2 = zzluVar.zzw();
        zzbv zzn52 = zzluVar.zzn();
        if (zzn52.zzo()) {
        }
        zzn2 = zzluVar.zzn();
        if (zzn2.zzo()) {
        }
        z12 = false;
        r13 = z11;
        zzn3 = zzluVar.zzn();
        if (!zzn3.zzo()) {
        }
        z13 = false;
        zzn4 = zzluVar.zzn();
        if (zzn4.zzo()) {
        }
        z15 = false;
        zzbv zzn62222 = zzluVar.zzn();
        if (zzn62222.zzo()) {
        }
        boolean zzo2222 = zzluVar.zzn().zzo();
        zzbk zzbkVar2222 = new zzbk();
        zzbkVar2222.zzb(zzblVar22);
        boolean z202222 = !z14;
        zzbkVar2222.zzd(4, z202222);
        zzbkVar2222.zzd(5, (z10 || z14) ? false : true);
        zzbkVar2222.zzd(6, (z12 || z14) ? false : true);
        zzbkVar2222.zzd(7, zzo2222 && (z12 || !z15 || z10) && !z14);
        zzbkVar2222.zzd(8, (z13 || z14) ? false : true);
        zzbkVar2222.zzd(9, zzo2222 && (z13 || (z15 && z19)) && !z14);
        zzbkVar2222.zzd(10, z202222);
        zzbkVar2222.zzd(11, (z10 || z14) ? false : true);
        if (z10) {
        }
        i7 = 12;
        z16 = false;
        zzbkVar2222.zzd(i7, z16);
        zze = zzbkVar2222.zze();
        this.t = zze;
        if (!zze.equals(zzblVar)) {
        }
        this.f19425ab.zzc();
    }

    public final Pair aq(zzbv zzbvVar, int i, long j) {
        if (zzbvVar.zzo()) {
            this.f19429f = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.ah = j;
            return null;
        }
        if (i == -1 || i >= zzbvVar.zzc()) {
            i = zzbvVar.zzg(false);
            long j2 = zzbvVar.zze(i, this.f8752a, 0L).zzl;
            j = zzen.zzv(0L);
        }
        return zzbvVar.zzl(this.f8752a, this.f19428e, i, zzen.zzs(j));
    }

    public final int ar(gzx gzxVar) {
        return gzxVar.i.zzo() ? this.f19429f : gzxVar.i.zzn(gzxVar.o.zza, this.f19428e).zzc;
    }

    public final gzx as(gzx gzxVar, zzbv zzbvVar, Pair pair) {
        zzdb.zzd(zzbvVar.zzo() || pair != null);
        zzbv zzbvVar2 = gzxVar.i;
        long av = av(gzxVar);
        gzx z = gzxVar.z(zzbvVar);
        if (zzbvVar.zzo()) {
            zzur zzurVar = gzx.f19073a;
            long zzs = zzen.zzs(this.ah);
            gzx y = z.aa(zzurVar, zzs, zzs, zzs, 0L, zzwr.zza, this.aa, zzfzo.zzn()).y(zzurVar);
            y.l = y.t;
            return y;
        }
        Object obj = z.o.zza;
        int i = zzen.zza;
        boolean equals = obj.equals(pair.first);
        zzur zzurVar2 = !equals ? new zzur(pair.first, -1L) : z.o;
        long longValue = ((Long) pair.second).longValue();
        long zzs2 = zzen.zzs(av);
        if (!zzbvVar2.zzo()) {
            zzbvVar2.zzn(obj, this.f19428e);
        }
        if (!equals || longValue < zzs2) {
            zzur zzurVar3 = zzurVar2;
            zzdb.zzf(!zzurVar3.zzb());
            gzx y2 = z.aa(zzurVar3, longValue, longValue, longValue, 0L, !equals ? zzwr.zza : z.f19074b, !equals ? this.aa : z.n, !equals ? zzfzo.zzn() : z.p).y(zzurVar3);
            y2.l = longValue;
            return y2;
        }
        if (longValue != zzs2) {
            zzur zzurVar4 = zzurVar2;
            zzdb.zzf(!zzurVar4.zzb());
            long max = Math.max(0L, z.q - (longValue - zzs2));
            long j = z.l;
            if (z.f19075c.equals(z.o)) {
                j = longValue + max;
            }
            gzx aa = z.aa(zzurVar4, longValue, longValue, longValue, max, z.f19074b, z.n, z.p);
            aa.l = j;
            return aa;
        }
        int zza = zzbvVar.zza(z.f19075c.zza);
        if (zza != -1 && zzbvVar.zzd(zza, this.f19428e, false).zzc == zzbvVar.zzn(zzurVar2.zza, this.f19428e).zzc) {
            return z;
        }
        zzbvVar.zzn(zzurVar2.zza, this.f19428e);
        long zzf = zzurVar2.zzb() ? this.f19428e.zzf(zzurVar2.zzb, zzurVar2.zzc) : this.f19428e.zzd;
        zzur zzurVar5 = zzurVar2;
        gzx y3 = z.aa(zzurVar5, z.t, z.t, z.f19078f, zzf - z.t, z.f19074b, z.n, z.p).y(zzurVar5);
        y3.l = zzf;
        return y3;
    }

    public final void at() {
        this.k.zzb();
        Thread currentThread = Thread.currentThread();
        Looper looper = this.f19430g;
        if (currentThread != looper.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = looper.getThread().getName();
            Locale locale = Locale.US;
            String r = tn.r("Player is accessed on the wrong thread.\nCurrent thread: '", name, "'\nExpected thread: '", name2, "'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread");
            if (this.p) {
                throw new IllegalStateException(r);
            }
            zzdt.zzg("ExoPlayerImpl", r, this.ai ? null : new IllegalStateException());
            this.ai = true;
        }
    }

    public final void au(Surface surface) {
        ArrayList arrayList = new ArrayList();
        zzln[] zzlnVarArr = this.u;
        int length = zzlnVarArr.length;
        boolean z = false;
        for (int i = 0; i < 2; i++) {
            zzln zzlnVar = zzlnVarArr[i];
            if (zzlnVar.zzb() == 2) {
                int ar = ar(this.i);
                zzbv zzbvVar = this.i.i;
                int i2 = ar == -1 ? 0 : ar;
                com.google.android.gms.internal.ads.s sVar = this.z;
                zzlj zzljVar = new zzlj(sVar, zzlnVar, zzbvVar, i2, this.ac, sVar.t);
                zzljVar.zzf(1);
                zzljVar.zze(surface);
                zzljVar.zzd();
                arrayList.add(zzljVar);
            }
        }
        Object obj = this.h;
        if (obj != null && obj != surface) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((zzlj) it.next()).zzi(this.w);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z = true;
            }
            Object obj2 = this.h;
            Surface surface2 = this.f19426c;
            if (obj2 == surface2) {
                surface2.release();
                this.f19426c = null;
            }
        }
        this.h = surface;
        if (z) {
            aw(zzig.zzd(new zzki(3), 1003));
        }
    }

    public final long av(gzx gzxVar) {
        zzur zzurVar = gzxVar.o;
        zzbv zzbvVar = gzxVar.i;
        if (!zzurVar.zzb()) {
            return zzen.zzv(ax(gzxVar));
        }
        zzbvVar.zzn(gzxVar.o.zza, this.f19428e);
        long j = gzxVar.r;
        if (j == -9223372036854775807L) {
            long j2 = zzbvVar.zze(ar(gzxVar), this.f8752a, 0L).zzl;
            return zzen.zzv(0L);
        }
        return zzen.zzv(0L) + zzen.zzv(j);
    }

    public final void aw(zzig zzigVar) {
        gzx gzxVar = this.i;
        gzx y = gzxVar.y(gzxVar.o);
        y.l = y.t;
        y.q = 0L;
        gzx x = y.x(1);
        if (zzigVar != null) {
            x = x.w(zzigVar);
        }
        this.ae++;
        this.z.ah.zzb(6).zza();
        ap(x, 0, false, 5, -9223372036854775807L, -1);
    }

    public final long ax(gzx gzxVar) {
        if (gzxVar.i.zzo()) {
            return zzen.zzs(this.ah);
        }
        long j = gzxVar.t;
        if (gzxVar.o.zzb()) {
            return j;
        }
        gzxVar.i.zzn(gzxVar.o.zza, this.f19428e);
        return j;
    }

    public final void ay(final int i, final int i2) {
        if (i == this.ad.zzb() && i2 == this.ad.zza()) {
            return;
        }
        this.ad = new zzee(i, i2);
        zzdp zzdpVar = new zzdp() { // from class: com.google.android.gms.internal.ads.zziy
            @Override // com.google.android.gms.internal.ads.zzdp
            public final void zza(Object obj) {
                int i3 = ij.f19424b;
                ((zzbm) obj).zzo(i, i2);
            }
        };
        zzds zzdsVar = this.f19425ab;
        zzdsVar.zzd(24, zzdpVar);
        zzdsVar.zzc();
        an(2, 14, new zzee(i, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzir
    public final void zzA(zzlz zzlzVar) {
        at();
        this.j.zzR(zzlzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzir
    public final void zzB(zzut zzutVar) {
        at();
        List singletonList = Collections.singletonList(zzutVar);
        at();
        at();
        ar(this.i);
        zzk();
        this.ae++;
        ArrayList arrayList = this.m;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i = size - 1; i >= 0; i--) {
                arrayList.remove(i);
            }
            this.r = this.r.zzh(0, size);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < singletonList.size(); i2++) {
            iw iwVar = new iw((zzut) singletonList.get(i2), this.y);
            arrayList2.add(iwVar);
            arrayList.add(i2, new dty(iwVar.f19447d, iwVar.f19446c));
        }
        this.r = this.r.zzg(0, arrayList2.size());
        aqw aqwVar = new aqw(arrayList, this.r);
        boolean zzo = aqwVar.zzo();
        int i3 = aqwVar.q;
        if (!zzo && i3 < 0) {
            throw new zzah(aqwVar, -1, -9223372036854775807L);
        }
        int zzg = aqwVar.zzg(false);
        gzx as = as(this.i, aqwVar, aq(aqwVar, zzg, -9223372036854775807L));
        int i4 = as.h;
        if (zzg != -1 && i4 != 1) {
            i4 = 4;
            if (!aqwVar.zzo() && zzg < i3) {
                i4 = 2;
            }
        }
        gzx x = as.x(i4);
        long zzs = zzen.zzs(-9223372036854775807L);
        zzwj zzwjVar = this.r;
        com.google.android.gms.internal.ads.s sVar = this.z;
        sVar.getClass();
        sVar.ah.zzc(17, new bna(arrayList2, zzwjVar, zzg, zzs)).zza();
        ap(x, 0, (this.i.o.zza.equals(x.o.zza) || this.i.i.zzo()) ? false : true, 4, ax(x), -1);
    }

    @Override // com.google.android.gms.internal.ads.zzi
    public final void zza(int i, long j, int i2, boolean z) {
        at();
        if (i == -1) {
            return;
        }
        zzdb.zzd(i >= 0);
        zzbv zzbvVar = this.i.i;
        if (zzbvVar.zzo() || i < zzbvVar.zzc()) {
            this.j.zzu();
            this.ae++;
            if (zzw()) {
                zzdt.zzf("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzke zzkeVar = new zzke(this.i);
                zzkeVar.zza(1);
                ij ijVar = this.v.zza;
                ijVar.getClass();
                ijVar.f19427d.zzh(new zzja(ijVar, zzkeVar));
                return;
            }
            gzx gzxVar = this.i;
            int i3 = gzxVar.h;
            if (i3 == 3 || (i3 == 4 && !zzbvVar.zzo())) {
                gzxVar = this.i.x(2);
            }
            int zzd = zzd();
            gzx as = as(gzxVar, zzbvVar, aq(zzbvVar, i, j));
            long zzs = zzen.zzs(j);
            com.google.android.gms.internal.ads.s sVar = this.z;
            sVar.getClass();
            sVar.ah.zzc(3, new cuu(zzbvVar, i, zzs)).zza();
            ap(as, 0, true, 1, ax(as), zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final int zzb() {
        at();
        if (zzw()) {
            return this.i.o.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final int zzc() {
        at();
        if (zzw()) {
            return this.i.o.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final int zzd() {
        at();
        int ar = ar(this.i);
        if (ar == -1) {
            return 0;
        }
        return ar;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final int zze() {
        at();
        if (this.i.i.zzo()) {
            return 0;
        }
        gzx gzxVar = this.i;
        return gzxVar.i.zza(gzxVar.o.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final int zzf() {
        at();
        return this.i.h;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final int zzg() {
        at();
        return this.i.f19077e;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final int zzh() {
        at();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final long zzi() {
        at();
        if (zzw()) {
            gzx gzxVar = this.i;
            return gzxVar.f19075c.equals(gzxVar.o) ? zzen.zzv(this.i.l) : zzl();
        }
        at();
        if (this.i.i.zzo()) {
            return this.ah;
        }
        gzx gzxVar2 = this.i;
        long j = 0;
        if (gzxVar2.f19075c.zzd != gzxVar2.o.zzd) {
            return zzen.zzv(gzxVar2.i.zze(zzd(), this.f8752a, 0L).zzm);
        }
        long j2 = gzxVar2.l;
        if (this.i.f19075c.zzb()) {
            gzx gzxVar3 = this.i;
            gzxVar3.i.zzn(gzxVar3.f19075c.zza, this.f19428e).zzg(this.i.f19075c.zzb);
        } else {
            j = j2;
        }
        gzx gzxVar4 = this.i;
        gzxVar4.i.zzn(gzxVar4.f19075c.zza, this.f19428e);
        return zzen.zzv(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final long zzj() {
        at();
        return av(this.i);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final long zzk() {
        at();
        return zzen.zzv(ax(this.i));
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final long zzl() {
        at();
        if (!zzw()) {
            zzbv zzn = zzn();
            if (zzn.zzo()) {
                return -9223372036854775807L;
            }
            return zzen.zzv(zzn.zze(zzd(), this.f8752a, 0L).zzm);
        }
        gzx gzxVar = this.i;
        zzur zzurVar = gzxVar.o;
        zzbv zzbvVar = gzxVar.i;
        Object obj = zzurVar.zza;
        zzbt zzbtVar = this.f19428e;
        zzbvVar.zzn(obj, zzbtVar);
        return zzen.zzv(zzbtVar.zzf(zzurVar.zzb, zzurVar.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final long zzm() {
        at();
        return zzen.zzv(this.i.q);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final zzbv zzn() {
        at();
        return this.i.i;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final zzcd zzo() {
        at();
        return this.i.n.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final void zzp() {
        at();
        boolean zzu = zzu();
        gdw gdwVar = this.al;
        gdwVar.f();
        gdwVar.h(0);
        ao(1, 1, zzu);
        gzx gzxVar = this.i;
        if (gzxVar.h != 1) {
            return;
        }
        gzx w = gzxVar.w(null);
        gzx x = w.x(true != w.i.zzo() ? 2 : 4);
        this.ae++;
        this.z.ah.zzb(29).zza();
        ap(x, 1, false, 5, -9223372036854775807L, -1);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final void zzq(boolean z) {
        at();
        zzf();
        gdw gdwVar = this.al;
        gdwVar.f();
        gdwVar.h(0);
        ao(1, 1, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final void zzr(Surface surface) {
        at();
        au(surface);
        int i = surface == null ? 0 : -1;
        ay(i, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final void zzs(float f2) {
        at();
        final float max = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Math.min(f2, 1.0f));
        if (this.l == max) {
            return;
        }
        this.l = max;
        an(1, 2, Float.valueOf(this.al.f17961b * max));
        zzdp zzdpVar = new zzdp() { // from class: com.google.android.gms.internal.ads.zzix
            @Override // com.google.android.gms.internal.ads.zzdp
            public final void zza(Object obj) {
                int i = ij.f19424b;
                ((zzbm) obj).zzs(max);
            }
        };
        zzds zzdsVar = this.f19425ab;
        zzdsVar.zzd(22, zzdpVar);
        zzdsVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final void zzt() {
        at();
        gdw gdwVar = this.al;
        zzu();
        gdwVar.f();
        gdwVar.h(0);
        aw(null);
        int i = zzcu.zza;
        zzfzo zzn = zzfzo.zzn();
        long j = this.i.t;
        zzfzo.zzl(zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final boolean zzu() {
        at();
        return this.i.f19079g;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final boolean zzv() {
        at();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final boolean zzw() {
        at();
        return this.i.o.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzir
    public final int zzx() {
        at();
        int length = this.u.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzir
    public final void zzy(zzlz zzlzVar) {
        this.j.zzt(zzlzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzir
    public final void zzz() {
        boolean z;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzen.zze;
        String zza = zzax.zza();
        StringBuilder o = tn.o("Release ", hexString, " [AndroidXMedia3/1.5.0-alpha01] [", str, "] [");
        o.append(zza);
        o.append("]");
        zzdt.zze("ExoPlayerImpl", o.toString());
        at();
        gdw gdwVar = this.al;
        gdwVar.f17964e = null;
        gdwVar.f();
        gdwVar.h(0);
        com.google.android.gms.internal.ads.s sVar = this.z;
        synchronized (sVar) {
            if (!sVar.am && sVar.t.getThread().isAlive()) {
                sVar.ah.zzi(7);
                sVar.az(new zzjw(sVar), sVar.f3982f);
                z = sVar.am;
            }
            z = true;
        }
        if (!z) {
            zzds zzdsVar = this.f19425ab;
            zzdsVar.zzd(10, new zzdp() { // from class: com.google.android.gms.internal.ads.zziz
                @Override // com.google.android.gms.internal.ads.zzdp
                public final void zza(Object obj) {
                    ((zzbm) obj).zzj(zzig.zzd(new zzki(1), 1003));
                }
            });
            zzdsVar.zzc();
        }
        this.f19425ab.zze();
        this.f19427d.zze(null);
        this.x.zzg(this.j);
        this.i.getClass();
        gzx x = this.i.x(1);
        this.i = x;
        gzx y = x.y(x.o);
        this.i = y;
        y.l = y.t;
        this.i.q = 0L;
        this.j.zzQ();
        this.ak.zzj();
        Surface surface = this.f19426c;
        if (surface != null) {
            surface.release();
            this.f19426c = null;
        }
        int i = zzcu.zza;
    }
}
