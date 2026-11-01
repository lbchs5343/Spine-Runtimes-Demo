package g;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class dwp {

    /* renamed from: a, reason: collision with root package name */
    public final cqi f14957a;

    /* renamed from: b, reason: collision with root package name */
    public final ahe f14958b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f14959c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f14960d;

    /* renamed from: e, reason: collision with root package name */
    public final ddc f14961e;

    /* renamed from: f, reason: collision with root package name */
    public final gv f14962f;

    /* renamed from: g, reason: collision with root package name */
    public final cuc f14963g;
    public final ahy h;
    public final cqi i;

    public dwp(Context context, cuc cucVar, ahy ahyVar, ahe aheVar, Executor executor, ddc ddcVar, cqi cqiVar, cqi cqiVar2, gv gvVar) {
        this.f14960d = context;
        this.f14963g = cucVar;
        this.h = ahyVar;
        this.f14958b = aheVar;
        this.f14959c = executor;
        this.f14961e = ddcVar;
        this.i = cqiVar;
        this.f14957a = cqiVar2;
        this.f14962f = gvVar;
    }

    public final void j(final ku kuVar, int i) {
        byte[] bArr;
        long j;
        dzy dzyVar;
        String str;
        fks j2;
        String str2;
        Integer num;
        fzm fzmVar;
        final dwp dwpVar = this;
        final ku kuVar2 = kuVar;
        byte[] bArr2 = kuVar2.f19567b;
        dte d2 = dwpVar.f14963g.d(kuVar2.f19566a);
        if (ecw.OK == null) {
            throw new NullPointerException("Null status");
        }
        long j3 = 0;
        while (true) {
            final int i2 = 0;
            bqq bqqVar = new bqq(dwpVar) { // from class: g.dyh

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ dwp f15089c;

                {
                    this.f15089c = dwpVar;
                }

                @Override // g.bqq
                public final Object i() {
                    Boolean bool;
                    switch (i2) {
                        case 0:
                            ku kuVar3 = kuVar2;
                            cga cgaVar = (cga) this.f15089c.h;
                            SQLiteDatabase m = cgaVar.m();
                            m.beginTransaction();
                            try {
                                Long i3 = cga.i(m, kuVar3);
                                if (i3 == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor rawQuery = cgaVar.m().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{i3.toString()});
                                    try {
                                        Boolean valueOf = Boolean.valueOf(rawQuery.moveToNext());
                                        rawQuery.close();
                                        bool = valueOf;
                                    } catch (Throwable th) {
                                        rawQuery.close();
                                        throw th;
                                    }
                                }
                                m.setTransactionSuccessful();
                                return bool;
                            } finally {
                                m.endTransaction();
                            }
                        default:
                            cga cgaVar2 = (cga) this.f15089c.h;
                            cgaVar2.getClass();
                            return (Iterable) cgaVar2.j(new ftr(cgaVar2, 2, kuVar2));
                    }
                }
            };
            cga cgaVar = (cga) dwpVar.f14961e;
            if (!((Boolean) cgaVar.n(bqqVar)).booleanValue()) {
                cgaVar.n(new erk(j3, dwpVar, kuVar2));
                return;
            }
            final int i3 = 1;
            final Iterable iterable = (Iterable) cgaVar.n(new bqq(dwpVar) { // from class: g.dyh

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ dwp f15089c;

                {
                    this.f15089c = dwpVar;
                }

                @Override // g.bqq
                public final Object i() {
                    Boolean bool;
                    switch (i3) {
                        case 0:
                            ku kuVar3 = kuVar2;
                            cga cgaVar2 = (cga) this.f15089c.h;
                            SQLiteDatabase m = cgaVar2.m();
                            m.beginTransaction();
                            try {
                                Long i32 = cga.i(m, kuVar3);
                                if (i32 == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor rawQuery = cgaVar2.m().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{i32.toString()});
                                    try {
                                        Boolean valueOf = Boolean.valueOf(rawQuery.moveToNext());
                                        rawQuery.close();
                                        bool = valueOf;
                                    } catch (Throwable th) {
                                        rawQuery.close();
                                        throw th;
                                    }
                                }
                                m.setTransactionSuccessful();
                                return bool;
                            } finally {
                                m.endTransaction();
                            }
                        default:
                            cga cgaVar22 = (cga) this.f15089c.h;
                            cgaVar22.getClass();
                            return (Iterable) cgaVar22.j(new ftr(cgaVar22, 2, kuVar2));
                    }
                }
            });
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (d2 == null) {
                baf.ax("Uploader", "Unknown backend for %s, deleting event batch for it...", kuVar2);
                dzyVar = new dzy(ecw.FATAL_ERROR, -1L);
                bArr = bArr2;
                j = j3;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ess) it.next()).f16099c);
                }
                if (bArr2 != null) {
                    gv gvVar = dwpVar.f14962f;
                    Objects.requireNonNull(gvVar);
                    dwq dwqVar = (dwq) cgaVar.n(new aoi(18, gvVar));
                    daw dawVar = new daw(1);
                    dawVar.f13888g = new HashMap();
                    dawVar.f13883b = Long.valueOf(dwpVar.i.l());
                    dawVar.f13885d = Long.valueOf(dwpVar.f14957a.l());
                    dawVar.f13886e = "GDT_CLIENT_METRICS";
                    cep cepVar = new cep("proto");
                    dwqVar.getClass();
                    dzh dzhVar = qh.f19856a;
                    dzhVar.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        dzhVar.n(dwqVar, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    dawVar.f13882a = new csl(cepVar, byteArrayOutputStream.toByteArray());
                    arrayList.add(((cov) d2).i(dawVar.y()));
                }
                cov covVar = (cov) d2;
                HashMap hashMap = new HashMap();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    gfj gfjVar = (gfj) it2.next();
                    String str3 = gfjVar.f18028c;
                    if (hashMap.containsKey(str3)) {
                        ((List) hashMap.get(str3)).add(gfjVar);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(gfjVar);
                        hashMap.put(str3, arrayList2);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                for (Map.Entry entry : hashMap.entrySet()) {
                    gfj gfjVar2 = (gfj) ((List) entry.getValue()).get(0);
                    egd egdVar = egd.DEFAULT;
                    long l = covVar.f13251d.l();
                    long l2 = covVar.f13249b.l();
                    bsp bspVar = new bsp(bkh.ANDROID_FIREBASE, new ewl(Integer.valueOf(gfjVar2.h("sdk-version")), gfjVar2.g("model"), gfjVar2.g("hardware"), gfjVar2.g("device"), gfjVar2.g("product"), gfjVar2.g("os-uild"), gfjVar2.g("manufacturer"), gfjVar2.g("fingerprint"), gfjVar2.g("locale"), gfjVar2.g("country"), gfjVar2.g("mcc_mnc"), gfjVar2.g("application_build")));
                    try {
                        num = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                        str2 = null;
                    } catch (NumberFormatException unused2) {
                        str2 = (String) entry.getKey();
                        num = null;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (gfj gfjVar3 : (List) entry.getValue()) {
                        byte[] bArr3 = bArr2;
                        csl cslVar = gfjVar3.f18031f;
                        cep cepVar2 = cslVar.f13435a;
                        byte[] bArr4 = cslVar.f13436b;
                        long j4 = j3;
                        if (cepVar2.equals(new cep("proto"))) {
                            fzmVar = new fzm();
                            fzmVar.f17721c = bArr4;
                        } else if (cepVar2.equals(new cep("json"))) {
                            String str4 = new String(bArr4, Charset.forName("UTF-8"));
                            fzm fzmVar2 = new fzm();
                            fzmVar2.f17722d = str4;
                            fzmVar = fzmVar2;
                        } else {
                            if (Log.isLoggable(baf.as("CctTransportBackend"), 5)) {
                                cepVar2.toString();
                            }
                            bArr2 = bArr3;
                            j3 = j4;
                        }
                        fzmVar.f17723e = Long.valueOf(gfjVar3.f18026a);
                        fzmVar.f17720b = Long.valueOf(gfjVar3.f18027b);
                        String str5 = (String) gfjVar3.f18029d.get("tz-offset");
                        fzmVar.f17725g = Long.valueOf(str5 == null ? 0L : Long.valueOf(str5).longValue());
                        fzmVar.f17719a = new bce((byo) byo.f12459a.get(gfjVar3.h("net-type")), (cme) cme.f13106a.get(gfjVar3.h("mobile-subtype")));
                        Integer num2 = gfjVar3.f18030e;
                        if (num2 != null) {
                            fzmVar.f17724f = num2;
                        }
                        String str6 = ((Long) fzmVar.f17723e) == null ? " eventTimeMs" : "";
                        if (((Long) fzmVar.f17720b) == null) {
                            str6 = str6.concat(" eventUptimeMs");
                        }
                        if (((Long) fzmVar.f17725g) == null) {
                            str6 = awf.c(str6, " timezoneOffsetSeconds");
                        }
                        if (!str6.isEmpty()) {
                            throw new IllegalStateException("Missing required properties:".concat(str6));
                        }
                        arrayList4.add(new bcj(((Long) fzmVar.f17723e).longValue(), (Integer) fzmVar.f17724f, ((Long) fzmVar.f17720b).longValue(), (byte[]) fzmVar.f17721c, (String) fzmVar.f17722d, ((Long) fzmVar.f17725g).longValue(), (bce) fzmVar.f17719a));
                        bArr2 = bArr3;
                        j3 = j4;
                    }
                    arrayList3.add(new dow(l, l2, bspVar, num, str2, arrayList4, egdVar));
                }
                bArr = bArr2;
                j = j3;
                aeq aeqVar = new aeq(arrayList3);
                URL url = covVar.f13248a;
                if (bArr != null) {
                    try {
                        dzj f2 = dzj.f(bArr);
                        String str7 = f2.f15127e;
                        if (str7 == null) {
                            str7 = null;
                        }
                        String str8 = f2.f15126d;
                        if (str8 != null) {
                            url = cov.h(str8);
                        }
                        str = str7;
                    } catch (IllegalArgumentException unused3) {
                        dzyVar = new dzy(ecw.FATAL_ERROR, -1L);
                    }
                } else {
                    str = null;
                }
                try {
                    dzh dzhVar2 = new dzh(url, aeqVar, str, 4, false);
                    aoi aoiVar = new aoi(6, covVar);
                    dzh dzhVar3 = dzhVar2;
                    int i4 = 5;
                    do {
                        j2 = aoiVar.j(dzhVar3);
                        URL url2 = (URL) j2.f16945c;
                        if (url2 != null) {
                            baf.ax("CctTransportBackend", "Following redirect to: %s", url2);
                            dzhVar3 = new dzh(url2, (aeq) dzhVar3.f15121f, (String) dzhVar3.f15122g, 4, false);
                        } else {
                            dzhVar3 = null;
                        }
                        if (dzhVar3 == null) {
                            break;
                        } else {
                            i4--;
                        }
                    } while (i4 >= 1);
                    int i5 = j2.f16943a;
                    if (i5 == 200) {
                        dzyVar = new dzy(ecw.OK, j2.f16944b);
                    } else {
                        if (i5 < 500 && i5 != 404) {
                            dzyVar = i5 == 400 ? new dzy(ecw.INVALID_PAYLOAD, -1L) : new dzy(ecw.FATAL_ERROR, -1L);
                        }
                        dzyVar = new dzy(ecw.TRANSIENT_ERROR, -1L);
                    }
                } catch (IOException e2) {
                    baf.bd("CctTransportBackend", "Could not make request to the backend", e2);
                    dzyVar = new dzy(ecw.TRANSIENT_ERROR, -1L);
                }
            }
            ecw ecwVar = ecw.TRANSIENT_ERROR;
            ecw ecwVar2 = dzyVar.f15155a;
            if (ecwVar2 == ecwVar) {
                final long j5 = j;
                cgaVar.n(new bqq() { // from class: g.evx
                    @Override // g.bqq
                    public final Object i() {
                        dwp dwpVar2 = dwp.this;
                        cga cgaVar2 = (cga) dwpVar2.h;
                        cgaVar2.getClass();
                        Iterable iterable2 = iterable;
                        if (iterable2.iterator().hasNext()) {
                            String str9 = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + cga.g(iterable2);
                            SQLiteDatabase m = cgaVar2.m();
                            m.beginTransaction();
                            try {
                                m.compileStatement(str9).execute();
                                Cursor rawQuery = m.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                                while (rawQuery.moveToNext()) {
                                    try {
                                        cgaVar2.l(rawQuery.getInt(0), gwo.MAX_RETRIES_REACHED, rawQuery.getString(1));
                                    } catch (Throwable th) {
                                        rawQuery.close();
                                        throw th;
                                    }
                                }
                                rawQuery.close();
                                m.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                                m.setTransactionSuccessful();
                            } finally {
                                m.endTransaction();
                            }
                        }
                        cgaVar2.j(new egf(dwpVar2.i.l() + j5, kuVar));
                        return null;
                    }
                });
                this.f14958b.d(kuVar, i + 1, true);
                return;
            }
            dwpVar = this;
            kuVar2 = kuVar;
            j3 = j;
            cgaVar.n(new ftr(dwpVar, 3, iterable));
            if (ecwVar2 == ecw.OK) {
                j3 = Math.max(j3, dzyVar.f15156b);
                if (bArr != null) {
                    cgaVar.n(new aoi(20, dwpVar));
                }
            } else if (ecwVar2 == ecw.INVALID_PAYLOAD) {
                HashMap hashMap2 = new HashMap();
                Iterator it3 = iterable.iterator();
                while (it3.hasNext()) {
                    String str9 = ((ess) it3.next()).f16099c.f18028c;
                    if (hashMap2.containsKey(str9)) {
                        hashMap2.put(str9, Integer.valueOf(((Integer) hashMap2.get(str9)).intValue() + 1));
                    } else {
                        hashMap2.put(str9, 1);
                    }
                }
                cgaVar.n(new ftr(dwpVar, 4, hashMap2));
            }
            bArr2 = bArr;
        }
    }
}
