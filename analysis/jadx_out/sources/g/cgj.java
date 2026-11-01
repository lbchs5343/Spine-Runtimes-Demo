package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes3.dex */
public final class cgj implements brb {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12839b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f12840c;

    public /* synthetic */ cgj(int i, Object obj) {
        this.f12839b = i;
        this.f12840c = obj;
    }

    public cgj(ao aoVar) {
        this.f12839b = 1;
        bff.p(aoVar, "cookieJar");
        this.f12840c = aoVar;
    }

    public static int d(enb enbVar, int i) {
        String o = enb.o("Retry-After", enbVar);
        if (o == null) {
            return i;
        }
        if (!new hu("\\d+").a(o)) {
            return he.UNDEFINED_ITEM_ID;
        }
        Integer valueOf = Integer.valueOf(o);
        bff.e(valueOf, "valueOf(header)");
        return valueOf.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:174:0x05d2  */
    /* JADX WARN: Removed duplicated region for block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0377 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0384 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final enb g(dpe dpeVar) {
        enb enbVar;
        int i;
        Date date;
        long j;
        long j2;
        Date date2;
        Date date3;
        String str;
        String str2;
        String str3;
        clx clxVar;
        String str4;
        String str5;
        bjl bjlVar;
        long j3;
        Date date4;
        long j4;
        long j5;
        long j6;
        bjl bjlVar2;
        String sb;
        int i2;
        Date date5;
        long j7;
        String str6;
        String str7;
        int i3;
        aju ajuVar;
        daw dawVar;
        fvd fvdVar;
        ehi ehiVar;
        aju ajuVar2;
        abv abvVar;
        abv z;
        abv abvVar2;
        ehi ehiVar2;
        px aa;
        dvq dvqVar;
        String str8;
        eyn eynVar;
        fvd fvdVar2 = (fvd) this.f12840c;
        if (fvdVar2 != null) {
            daw dawVar2 = dpeVar.f14583c;
            eyn eynVar2 = (eyn) dawVar2.f13886e;
            try {
                aa = fvdVar2.f17471a.aa(buj.aw(eynVar2));
            } catch (IOException unused) {
            }
            if (aa != null) {
                try {
                    un unVar = new un((cpv) aa.f19835a.get(0));
                    dvqVar = unVar.i;
                    str8 = unVar.k;
                    eynVar = unVar.f20107f;
                    dvq dvqVar2 = unVar.l;
                    String c2 = dvqVar2.c("Content-Type");
                    String c3 = dvqVar2.c("Content-Length");
                    fzn fznVar = new fzn(7);
                    bff.p(eynVar, abn.EXTRA_URL);
                    fznVar.h = eynVar;
                    fznVar.w(str8, null);
                    bff.p(dvqVar, TTDownloadField.TT_HEADERS);
                    fznVar.f17730e = dvqVar.f();
                    daw x = fznVar.x();
                    hdt hdtVar = new hdt();
                    hdtVar.f19298f = x;
                    aqt aqtVar = unVar.f20105d;
                    bff.p(aqtVar, "protocol");
                    hdtVar.j = aqtVar;
                    hdtVar.l = unVar.f20106e;
                    String str9 = unVar.f20108g;
                    bff.p(str9, "message");
                    hdtVar.f19295c = str9;
                    hdtVar.p(dvqVar2);
                    hdtVar.m = new bhv(aa, c2, c3);
                    hdtVar.f19297e = unVar.f20104c;
                    hdtVar.f19294b = unVar.h;
                    hdtVar.f19296d = unVar.j;
                    enbVar = hdtVar.o();
                } catch (IOException unused2) {
                    erq.m(aa);
                }
                if (eynVar.equals(eynVar2) && str8.equals((String) dawVar2.f13887f)) {
                    Set<String> o = buj.o(enbVar.n);
                    if (!o.isEmpty()) {
                        for (String str10 : o) {
                            if (!dvqVar.d(str10).equals(((dvq) dawVar2.f13882a).d(str10))) {
                            }
                        }
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    daw dawVar3 = dpeVar.f14583c;
                    if (enbVar == null) {
                        j = enbVar.f15839f;
                        j2 = enbVar.f15838e;
                        dvq dvqVar3 = enbVar.n;
                        int size = dvqVar3.size();
                        date = null;
                        date2 = null;
                        date3 = null;
                        str = null;
                        str2 = null;
                        str3 = null;
                        int i4 = 0;
                        int i5 = -1;
                        while (i4 < size) {
                            String e2 = dvqVar3.e(i4);
                            String b2 = dvqVar3.b(i4);
                            long j8 = currentTimeMillis;
                            if (dmc.bx(e2, "Date")) {
                                date3 = eli.d(b2);
                                str3 = b2;
                            } else if (dmc.bx(e2, "Expires")) {
                                date = eli.d(b2);
                            } else if (dmc.bx(e2, "Last-Modified")) {
                                date2 = eli.d(b2);
                                str2 = b2;
                            } else if (dmc.bx(e2, "ETag")) {
                                str = b2;
                            } else if (dmc.bx(e2, "Age")) {
                                i5 = erq.ad(-1, b2);
                            }
                            i4++;
                            currentTimeMillis = j8;
                        }
                        i = i5;
                    } else {
                        i = -1;
                        date = null;
                        j = 0;
                        j2 = 0;
                        date2 = null;
                        date3 = null;
                        str = null;
                        str2 = null;
                        str3 = null;
                    }
                    long j9 = currentTimeMillis;
                    int i6 = 3;
                    if (enbVar != null) {
                        clxVar = new clx(i6, dawVar3, null, false);
                    } else {
                        boolean z2 = false;
                        Object obj = null;
                        if (((eyn) dawVar3.f13886e).i && enbVar.h == null) {
                            clxVar = new clx(i6, dawVar3, obj, z2);
                        } else if (awt.ap(enbVar, dawVar3)) {
                            bjl bjlVar3 = (bjl) dawVar3.f13888g;
                            if (bjlVar3 == null) {
                                bjl bjlVar4 = bjl.f11699a;
                                bjlVar3 = afo.ax((dvq) dawVar3.f13882a);
                                dawVar3.f13888g = bjlVar3;
                            }
                            if (!bjlVar3.f11705g && ((dvq) dawVar3.f13882a).c("If-Modified-Since") == null && ((dvq) dawVar3.f13882a).c("If-None-Match") == null) {
                                bjl r = enbVar.r();
                                if (date3 != null) {
                                    bjlVar = bjlVar3;
                                    str4 = "If-None-Match";
                                    str5 = "If-Modified-Since";
                                    j3 = Math.max(0L, j2 - date3.getTime());
                                } else {
                                    str4 = "If-None-Match";
                                    str5 = "If-Modified-Since";
                                    bjlVar = bjlVar3;
                                    j3 = 0;
                                }
                                if (i != -1) {
                                    date4 = date;
                                    j4 = j;
                                    j3 = Math.max(j3, TimeUnit.SECONDS.toMillis(i));
                                } else {
                                    date4 = date;
                                    j4 = j;
                                }
                                long j10 = j3 + (j2 - j4) + (j9 - j2);
                                int i7 = enbVar.r().m;
                                if (i7 != -1) {
                                    j6 = TimeUnit.SECONDS.toMillis(i7);
                                } else if (date4 != null) {
                                    if (date3 != null) {
                                        j2 = date3.getTime();
                                    }
                                    j6 = date4.getTime() - j2;
                                    if (j6 <= 0) {
                                        bjlVar2 = bjlVar;
                                        j6 = 0;
                                        j5 = 0;
                                        i2 = bjlVar2.m;
                                        if (i2 != -1) {
                                            date5 = date4;
                                            j7 = j10;
                                            j6 = Math.min(j6, TimeUnit.SECONDS.toMillis(i2));
                                        } else {
                                            date5 = date4;
                                            j7 = j10;
                                        }
                                        int i8 = bjlVar2.j;
                                        long millis = i8 != -1 ? TimeUnit.SECONDS.toMillis(i8) : j5;
                                        long millis2 = (!r.n || (i3 = bjlVar2.f11700b) == -1) ? j5 : TimeUnit.SECONDS.toMillis(i3);
                                        if (!r.f11705g) {
                                            long j11 = j7 + millis;
                                            if (j11 < millis2 + j6) {
                                                hdt q = enbVar.q();
                                                if (j11 >= j6) {
                                                    q.f19299g.e("Warning", "110 HttpURLConnection \"Response is stale\"");
                                                }
                                                if (j7 > AdBaseConstants.DEFAULT_DELAY_TIMESTAMP && enbVar.r().m == -1 && date5 == null) {
                                                    q.f19299g.e("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                                }
                                                clxVar = new clx(3, null, q.o(), false);
                                            }
                                        }
                                        if (str != null) {
                                            str6 = str;
                                            str7 = str4;
                                        } else {
                                            if (date2 != null) {
                                                str6 = str2;
                                            } else if (date3 != null) {
                                                str6 = str3;
                                            } else {
                                                clxVar = new clx(3, dawVar3, null, false);
                                            }
                                            str7 = str5;
                                        }
                                        ais f2 = ((dvq) dawVar3.f13882a).f();
                                        bff.d(str6);
                                        f2.h(str7, str6);
                                        fzn v = dawVar3.v();
                                        v.f17730e = f2.d().f();
                                        clxVar = new clx(3, v.x(), enbVar, false);
                                    }
                                } else {
                                    if (date2 != null) {
                                        List list = ((eyn) enbVar.i.f13886e).k;
                                        if (list == null) {
                                            sb = null;
                                        } else {
                                            StringBuilder sb2 = new StringBuilder();
                                            gpu.i(sb2, list);
                                            sb = sb2.toString();
                                        }
                                        if (sb == null) {
                                            long time = (date3 != null ? date3.getTime() : j4) - date2.getTime();
                                            j5 = 0;
                                            if (time > 0) {
                                                j6 = time / 10;
                                                bjlVar2 = bjlVar;
                                                i2 = bjlVar2.m;
                                                if (i2 != -1) {
                                                }
                                                int i82 = bjlVar2.j;
                                                if (i82 != -1) {
                                                }
                                                if (r.n) {
                                                }
                                                if (!r.f11705g) {
                                                }
                                                if (str != null) {
                                                }
                                                ais f22 = ((dvq) dawVar3.f13882a).f();
                                                bff.d(str6);
                                                f22.h(str7, str6);
                                                fzn v2 = dawVar3.v();
                                                v2.f17730e = f22.d().f();
                                                clxVar = new clx(3, v2.x(), enbVar, false);
                                            }
                                            j6 = j5;
                                            bjlVar2 = bjlVar;
                                            i2 = bjlVar2.m;
                                            if (i2 != -1) {
                                            }
                                            int i822 = bjlVar2.j;
                                            if (i822 != -1) {
                                            }
                                            if (r.n) {
                                            }
                                            if (!r.f11705g) {
                                            }
                                            if (str != null) {
                                            }
                                            ais f222 = ((dvq) dawVar3.f13882a).f();
                                            bff.d(str6);
                                            f222.h(str7, str6);
                                            fzn v22 = dawVar3.v();
                                            v22.f17730e = f222.d().f();
                                            clxVar = new clx(3, v22.x(), enbVar, false);
                                        }
                                    }
                                    j5 = 0;
                                    j6 = j5;
                                    bjlVar2 = bjlVar;
                                    i2 = bjlVar2.m;
                                    if (i2 != -1) {
                                    }
                                    int i8222 = bjlVar2.j;
                                    if (i8222 != -1) {
                                    }
                                    if (r.n) {
                                    }
                                    if (!r.f11705g) {
                                    }
                                    if (str != null) {
                                    }
                                    ais f2222 = ((dvq) dawVar3.f13882a).f();
                                    bff.d(str6);
                                    f2222.h(str7, str6);
                                    fzn v222 = dawVar3.v();
                                    v222.f17730e = f2222.d().f();
                                    clxVar = new clx(3, v222.x(), enbVar, false);
                                }
                                bjlVar2 = bjlVar;
                                j5 = 0;
                                i2 = bjlVar2.m;
                                if (i2 != -1) {
                                }
                                int i82222 = bjlVar2.j;
                                if (i82222 != -1) {
                                }
                                if (r.n) {
                                }
                                if (!r.f11705g) {
                                }
                                if (str != null) {
                                }
                                ais f22222 = ((dvq) dawVar3.f13882a).f();
                                bff.d(str6);
                                f22222.h(str7, str6);
                                fzn v2222 = dawVar3.v();
                                v2222.f17730e = f22222.d().f();
                                clxVar = new clx(3, v2222.x(), enbVar, false);
                            } else {
                                clxVar = new clx(3, dawVar3, null, false);
                            }
                        } else {
                            clxVar = new clx(i6, dawVar3, obj, z2);
                        }
                    }
                    if (((daw) clxVar.f13103e) != null) {
                        bjl bjlVar5 = (bjl) dawVar3.f13888g;
                        if (bjlVar5 == null) {
                            bjl bjlVar6 = bjl.f11699a;
                            bjlVar5 = afo.ax((dvq) dawVar3.f13882a);
                            dawVar3.f13888g = bjlVar5;
                        }
                        if (bjlVar5.l) {
                            ajuVar = null;
                            clxVar = new clx(3, ajuVar, ajuVar, false);
                            dawVar = (daw) clxVar.f13103e;
                            enb enbVar2 = (enb) clxVar.f13101c;
                            fvdVar = (fvd) this.f12840c;
                            if (fvdVar != null) {
                                synchronized (fvdVar) {
                                }
                            }
                            if (enbVar != null && enbVar2 == null && (ehiVar2 = enbVar.f15835b) != null) {
                                erq.m(ehiVar2);
                            }
                            if (dawVar != null && enbVar2 == null) {
                                ais aisVar = new ais(0);
                                daw dawVar4 = dpeVar.f14583c;
                                aqt aqtVar2 = aqt.HTTP_1_1;
                                bff.p(aqtVar2, "protocol");
                                return new enb(dawVar4, aqtVar2, "Unsatisfiable Request (only-if-cached)", 504, null, aisVar.d(), erq.f16046f, null, null, null, -1L, System.currentTimeMillis(), null);
                            }
                            if (dawVar == null) {
                                bff.d(enbVar2);
                                hdt q2 = enbVar2.q();
                                enb bs = acq.bs(enbVar2);
                                hdt.n("cacheResponse", bs);
                                q2.i = bs;
                                return q2.o();
                            }
                            try {
                                enb k = dpeVar.k(dawVar);
                                if (enbVar2 != null) {
                                    if (k.f15840g == 304) {
                                        hdt q3 = enbVar2.q();
                                        dvq dvqVar4 = enbVar2.n;
                                        dvq dvqVar5 = k.n;
                                        ArrayList arrayList = new ArrayList(20);
                                        int size2 = dvqVar4.size();
                                        for (int i9 = 0; i9 < size2; i9++) {
                                            String e3 = dvqVar4.e(i9);
                                            String b3 = dvqVar4.b(i9);
                                            if ((!"Warning".equalsIgnoreCase(e3) || !dmc.bw(b3, "1", false)) && ("Content-Length".equalsIgnoreCase(e3) || "Content-Encoding".equalsIgnoreCase(e3) || "Content-Type".equalsIgnoreCase(e3) || !acq.bq(e3) || dvqVar5.c(e3) == null)) {
                                                bff.p(e3, abn.EXTRA_UA_APP_NAME);
                                                bff.p(b3, "value");
                                                arrayList.add(e3);
                                                arrayList.add(dcv.bk(b3).toString());
                                            }
                                        }
                                        int size3 = dvqVar5.size();
                                        for (int i10 = 0; i10 < size3; i10++) {
                                            String e4 = dvqVar5.e(i10);
                                            if (!"Content-Length".equalsIgnoreCase(e4) && !"Content-Encoding".equalsIgnoreCase(e4) && !"Content-Type".equalsIgnoreCase(e4) && acq.bq(e4)) {
                                                String b4 = dvqVar5.b(i10);
                                                bff.p(e4, abn.EXTRA_UA_APP_NAME);
                                                bff.p(b4, "value");
                                                arrayList.add(e4);
                                                arrayList.add(dcv.bk(b4).toString());
                                            }
                                        }
                                        q3.p(new dvq((String[]) arrayList.toArray(new String[0])));
                                        q3.f19294b = k.f15839f;
                                        q3.f19296d = k.f15838e;
                                        enb bs2 = acq.bs(enbVar2);
                                        hdt.n("cacheResponse", bs2);
                                        q3.i = bs2;
                                        enb bs3 = acq.bs(k);
                                        hdt.n("networkResponse", bs3);
                                        q3.f19293a = bs3;
                                        enb o2 = q3.o();
                                        ehi ehiVar3 = k.f15835b;
                                        bff.d(ehiVar3);
                                        ehiVar3.close();
                                        fvd fvdVar3 = (fvd) this.f12840c;
                                        bff.d(fvdVar3);
                                        fvdVar3.c();
                                        ((fvd) this.f12840c).getClass();
                                        un unVar2 = new un(o2);
                                        ehi ehiVar4 = enbVar2.f15835b;
                                        bff.ag(ehiVar4, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
                                        px pxVar = ((bhv) ehiVar4).f11614f;
                                        try {
                                            abv z3 = pxVar.f19836b.z(pxVar.f19838d, pxVar.f19837c);
                                            if (z3 != null) {
                                                try {
                                                    unVar2.o(z3);
                                                    z3.g();
                                                } catch (IOException unused3) {
                                                    abvVar2 = z3;
                                                    if (abvVar2 != 0) {
                                                        try {
                                                            abvVar2.f();
                                                        } catch (IOException unused4) {
                                                        }
                                                    }
                                                    return o2;
                                                }
                                            }
                                        } catch (IOException unused5) {
                                            abvVar2 = ajuVar;
                                        }
                                        return o2;
                                    }
                                    ehi ehiVar5 = enbVar2.f15835b;
                                    if (ehiVar5 != null) {
                                        erq.m(ehiVar5);
                                    }
                                }
                                hdt q4 = k.q();
                                enb bs4 = acq.bs(enbVar2);
                                hdt.n("cacheResponse", bs4);
                                q4.i = bs4;
                                enb bs5 = acq.bs(k);
                                hdt.n("networkResponse", bs5);
                                q4.f19293a = bs5;
                                enb o3 = q4.o();
                                if (((fvd) this.f12840c) != null) {
                                    if (fyd.a(o3) && awt.ap(o3, dawVar)) {
                                        fvd fvdVar4 = (fvd) this.f12840c;
                                        fvdVar4.getClass();
                                        daw dawVar5 = o3.i;
                                        String str11 = (String) dawVar5.f13887f;
                                        bff.p(str11, "method");
                                        if (str11.equals("POST") || str11.equals("PATCH") || str11.equals("PUT") || str11.equals("DELETE") || str11.equals("MOVE")) {
                                            fvdVar4.b(dawVar5);
                                        } else {
                                            if (str11.equals("GET") && !buj.o(o3.n).contains("*")) {
                                                un unVar3 = new un(o3);
                                                try {
                                                    fxy fxyVar = fvdVar4.f17471a;
                                                    String aw = buj.aw((eyn) dawVar5.f13886e);
                                                    hu huVar = fxy.f17609d;
                                                    z = fxyVar.z(-1L, aw);
                                                } catch (IOException unused6) {
                                                    abvVar = ajuVar;
                                                }
                                                if (z != null) {
                                                    try {
                                                        unVar3.o(z);
                                                        ajuVar2 = new aju(fvdVar4, z);
                                                    } catch (IOException unused7) {
                                                        abvVar = z;
                                                        if (abvVar != 0) {
                                                            abvVar.f();
                                                        }
                                                        ajuVar2 = ajuVar;
                                                        if (ajuVar2 != null) {
                                                        }
                                                    }
                                                    if (ajuVar2 != null) {
                                                        return o3;
                                                    }
                                                    ckw ckwVar = (ckw) ajuVar2.f10343a;
                                                    ehi ehiVar6 = o3.f15835b;
                                                    bff.d(ehiVar6);
                                                    yn ynVar = new yn(ehiVar6.c(), ajuVar2, baf.w(ckwVar));
                                                    String o4 = enb.o("Content-Type", o3);
                                                    long d2 = o3.f15835b.d();
                                                    hdt q5 = o3.q();
                                                    q5.m = new dhd(o4, d2, baf.ai(ynVar), 0);
                                                    return q5.o();
                                                }
                                            }
                                            ajuVar2 = ajuVar;
                                            if (ajuVar2 != null) {
                                            }
                                        }
                                        ajuVar2 = ajuVar;
                                        if (ajuVar2 != null) {
                                        }
                                    } else {
                                        String str12 = (String) dawVar.f13887f;
                                        bff.p(str12, "method");
                                        if (str12.equals("POST") || str12.equals("PATCH") || str12.equals("PUT") || str12.equals("DELETE") || str12.equals("MOVE")) {
                                            try {
                                                ((fvd) this.f12840c).b(dawVar);
                                            } catch (IOException unused8) {
                                            }
                                        }
                                    }
                                }
                                return o3;
                            } catch (Throwable th) {
                                if (enbVar != null && (ehiVar = enbVar.f15835b) != null) {
                                    erq.m(ehiVar);
                                }
                                throw th;
                            }
                        }
                    }
                    ajuVar = null;
                    dawVar = (daw) clxVar.f13103e;
                    enb enbVar22 = (enb) clxVar.f13101c;
                    fvdVar = (fvd) this.f12840c;
                    if (fvdVar != null) {
                    }
                    if (enbVar != null) {
                        erq.m(ehiVar2);
                    }
                    if (dawVar != null) {
                    }
                    if (dawVar == null) {
                    }
                }
                ehi ehiVar7 = enbVar.f15835b;
                if (ehiVar7 != null) {
                    erq.m(ehiVar7);
                }
            }
        }
        enbVar = null;
        long currentTimeMillis2 = System.currentTimeMillis();
        daw dawVar32 = dpeVar.f14583c;
        if (enbVar == null) {
        }
        long j92 = currentTimeMillis2;
        int i62 = 3;
        if (enbVar != null) {
        }
        if (((daw) clxVar.f13103e) != null) {
        }
        ajuVar = null;
        dawVar = (daw) clxVar.f13103e;
        enb enbVar222 = (enb) clxVar.f13101c;
        fvdVar = (fvd) this.f12840c;
        if (fvdVar != null) {
        }
        if (enbVar != null) {
        }
        if (dawVar != null) {
        }
        if (dawVar == null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ArrayList] */
    @Override // g.brb
    public final enb a(dpe dpeVar) {
        ehi ehiVar;
        ?? arrayList;
        SSLSocketFactory sSLSocketFactory;
        gvr gvrVar;
        bws bwsVar;
        switch (this.f12839b) {
            case 0:
                return g(dpeVar);
            case 1:
                ao aoVar = (ao) this.f12840c;
                daw dawVar = dpeVar.f14583c;
                dvq dvqVar = (dvq) dawVar.f13882a;
                fzn v = dawVar.v();
                eyn eynVar = (eyn) dawVar.f13886e;
                sz szVar = (sz) dawVar.f13883b;
                long j = -1;
                if (szVar != null) {
                    dpd d2 = szVar.d();
                    if (d2 != null) {
                        v.n("Content-Type", d2.f14578c);
                    }
                    long c2 = szVar.c();
                    if (c2 != -1) {
                        v.n("Content-Length", String.valueOf(c2));
                        ((ais) v.f17730e).b("Transfer-Encoding");
                    } else {
                        v.n("Transfer-Encoding", "chunked");
                        ((ais) v.f17730e).b("Content-Length");
                    }
                }
                boolean z = false;
                if (dvqVar.c("Host") == null) {
                    v.n("Host", erq.r(eynVar, false));
                }
                if (dvqVar.c("Connection") == null) {
                    v.n("Connection", "Keep-Alive");
                }
                if (dvqVar.c("Accept-Encoding") == null && dvqVar.c("Range") == null) {
                    v.n("Accept-Encoding", "gzip");
                    z = true;
                }
                aoVar.getClass();
                bff.p(eynVar, abn.EXTRA_URL);
                if (dvqVar.c("User-Agent") == null) {
                    v.n("User-Agent", "okhttp/4.12.0");
                }
                enb k = dpeVar.k(v.x());
                dvq dvqVar2 = k.n;
                fyd.b(aoVar, eynVar, dvqVar2);
                hdt q = k.q();
                q.f19298f = dawVar;
                if (z && "gzip".equalsIgnoreCase(enb.o("Content-Encoding", k)) && fyd.a(k) && (ehiVar = k.f15835b) != null) {
                    dot dotVar = new dot(ehiVar.c());
                    ais f2 = dvqVar2.f();
                    f2.b("Content-Encoding");
                    f2.b("Content-Length");
                    q.p(f2.d());
                    q.m = new dhd(enb.o("Content-Type", k), j, baf.ai(dotVar), 0);
                }
                return q.o();
            default:
                daw dawVar2 = dpeVar.f14583c;
                ib ibVar = dpeVar.f14584d;
                fai faiVar = fai.f16469a;
                enb enbVar = null;
                int i = 0;
                daw dawVar3 = dawVar2;
                while (true) {
                    boolean z2 = true;
                    while (ibVar.k == null) {
                        synchronized (ibVar) {
                            try {
                                if (ibVar.f19411g) {
                                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                                }
                                if (ibVar.f19408d) {
                                    throw new IllegalStateException("Check failed.");
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z2) {
                            dhh dhhVar = ibVar.f19409e;
                            eyn eynVar2 = (eyn) dawVar3.f13886e;
                            fys fysVar = ibVar.j;
                            if (eynVar2.i) {
                                SSLSocketFactory sSLSocketFactory2 = fysVar.f17664d;
                                if (sSLSocketFactory2 == null) {
                                    throw new IllegalStateException("CLEARTEXT-only client");
                                }
                                gvr gvrVar2 = fysVar.f17665e;
                                bwsVar = fysVar.n;
                                sSLSocketFactory = sSLSocketFactory2;
                                gvrVar = gvrVar2;
                            } else {
                                sSLSocketFactory = null;
                                gvrVar = null;
                                bwsVar = null;
                            }
                            ibVar.f19406b = new cpr(dhhVar, new cbm(eynVar2.f16373c, eynVar2.f16374d, fysVar.l, fysVar.i, sSLSocketFactory, gvrVar, bwsVar, fysVar.x, fysVar.o, fysVar.r, fysVar.aa), ibVar);
                        }
                        try {
                            if (ibVar.n) {
                                throw new IOException("Canceled");
                            }
                            try {
                                try {
                                    enb k2 = dpeVar.k(dawVar3);
                                    if (enbVar != null) {
                                        hdt q2 = k2.q();
                                        hdt q3 = enbVar.q();
                                        q3.m = null;
                                        enb o = q3.o();
                                        if (o.f15835b != null) {
                                            throw new IllegalArgumentException("priorResponse.body != null");
                                        }
                                        q2.k = o;
                                        k2 = q2.o();
                                    }
                                    enbVar = k2;
                                    dawVar3 = f(enbVar, ibVar.k);
                                    if (dawVar3 == null) {
                                        ibVar.x(false);
                                        return enbVar;
                                    }
                                    ehi ehiVar2 = enbVar.f15835b;
                                    if (ehiVar2 != null) {
                                        erq.m(ehiVar2);
                                    }
                                    i++;
                                    if (i > 20) {
                                        throw new ProtocolException("Too many follow-up requests: " + i);
                                    }
                                    ibVar.x(true);
                                } catch (fvg e2) {
                                    if (!e(e2.c(), ibVar, dawVar3, false)) {
                                        IOException b2 = e2.b();
                                        bff.p(b2, "<this>");
                                        Iterator it = faiVar.iterator();
                                        while (it.hasNext()) {
                                            cux.ag(b2, (Exception) it.next());
                                        }
                                        throw b2;
                                    }
                                    IOException b3 = e2.b();
                                    arrayList = new ArrayList(faiVar.size() + 1);
                                    arrayList.addAll(faiVar);
                                    arrayList.add(b3);
                                    ibVar.x(true);
                                    faiVar = arrayList;
                                    z2 = false;
                                }
                            } catch (IOException e3) {
                                if (!e(e3, ibVar, dawVar3, !(e3 instanceof fhb))) {
                                    Iterator it2 = faiVar.iterator();
                                    while (it2.hasNext()) {
                                        cux.ag(e3, (Exception) it2.next());
                                    }
                                    throw e3;
                                }
                                arrayList = new ArrayList(faiVar.size() + 1);
                                arrayList.addAll(faiVar);
                                arrayList.add(e3);
                                ibVar.x(true);
                                faiVar = arrayList;
                                z2 = false;
                            }
                        } catch (Throwable th2) {
                            ibVar.x(true);
                            throw th2;
                        }
                    }
                    throw new IllegalStateException("Check failed.");
                }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001f, code lost:
    
        if (r7 == false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean e(IOException iOException, ib ibVar, daw dawVar, boolean z) {
        boolean z2;
        efg efgVar;
        gba gbaVar;
        if (!((fys) this.f12840c).f17662ab || ((z && (iOException instanceof FileNotFoundException)) || (iOException instanceof ProtocolException))) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (iOException instanceof SocketTimeoutException) {
            }
        }
        if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        cpr cprVar = ibVar.f19406b;
        bff.d(cprVar);
        int i = cprVar.f13292e;
        if (i == 0 && cprVar.i == 0 && cprVar.f13288a == 0) {
            z2 = false;
        } else {
            if (cprVar.f13293f == null) {
                ego egoVar = null;
                if (i <= 1 && cprVar.i <= 1 && cprVar.f13288a <= 0 && (gbaVar = cprVar.h.f19405a) != null) {
                    synchronized (gbaVar) {
                        if (gbaVar.i == 0) {
                            if (erq.p(gbaVar.o.f15500a.f12590a, cprVar.f13294g.f12590a)) {
                                egoVar = gbaVar.o;
                            }
                        }
                    }
                }
                if (egoVar != null) {
                    cprVar.f13293f = egoVar;
                } else {
                    gqc gqcVar = cprVar.f13289b;
                    if ((gqcVar == null || !gqcVar.au()) && (efgVar = cprVar.f13290c) != null) {
                        z2 = efgVar.g();
                    }
                }
            }
            z2 = true;
        }
        return z2;
    }

    public daw f(enb enbVar, aju ajuVar) {
        enb enbVar2;
        gba gbaVar;
        ego egoVar = (ajuVar == null || (gbaVar = (gba) ajuVar.f10344b) == null) ? null : gbaVar.o;
        int i = enbVar.f15840g;
        String str = (String) enbVar.i.f13887f;
        if (i != 307 && i != 308) {
            if (i == 401) {
                ((fys) this.f12840c).f17666f.getClass();
                return null;
            }
            if (i != 421) {
                if (i == 503) {
                    enb enbVar3 = enbVar.f15836c;
                    if ((enbVar3 == null || enbVar3.f15840g != 503) && d(enbVar, he.UNDEFINED_ITEM_ID) == 0) {
                        return enbVar.i;
                    }
                } else {
                    if (i == 407) {
                        bff.d(egoVar);
                        if (egoVar.f15501b.type() != Proxy.Type.HTTP) {
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                        ((fys) this.f12840c).x.getClass();
                        return null;
                    }
                    if (i != 408) {
                        switch (i) {
                        }
                    } else if (((fys) this.f12840c).f17662ab && (((enbVar2 = enbVar.f15836c) == null || enbVar2.f15840g != 408) && d(enbVar, 0) <= 0)) {
                        return enbVar.i;
                    }
                }
            } else if (ajuVar != null && !bff.n(((cpr) ajuVar.f10347e).f13294g.f12590a.f16373c, ((gba) ajuVar.f10344b).o.f15500a.f12590a.f16373c)) {
                gba gbaVar2 = (gba) ajuVar.f10344b;
                synchronized (gbaVar2) {
                    gbaVar2.f17838e = true;
                }
                return enbVar.i;
            }
            return null;
        }
        fys fysVar = (fys) this.f12840c;
        if (fysVar.f17663c) {
            String o = enb.o("Location", enbVar);
            daw dawVar = enbVar.i;
            if (o != null) {
                eyn eynVar = (eyn) dawVar.f13886e;
                eynVar.getClass();
                ke p = eynVar.p(o);
                eyn n = p != null ? p.n() : null;
                if (n != null && (bff.n(n.f16375e, ((eyn) dawVar.f13886e).f16375e) || fysVar.v)) {
                    fzn v = dawVar.v();
                    if (ckd.l(str)) {
                        int i2 = enbVar.f15840g;
                        boolean z = str.equals("PROPFIND") || i2 == 308 || i2 == 307;
                        if (str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                            v.w(str, z ? (sz) dawVar.f13883b : null);
                        } else {
                            v.w("GET", null);
                        }
                        if (!z) {
                            ((ais) v.f17730e).b("Transfer-Encoding");
                            ((ais) v.f17730e).b("Content-Length");
                            ((ais) v.f17730e).b("Content-Type");
                        }
                    }
                    if (!erq.p((eyn) dawVar.f13886e, n)) {
                        ((ais) v.f17730e).b("Authorization");
                    }
                    v.h = n;
                    return v.x();
                }
            }
        }
        return null;
    }
}
