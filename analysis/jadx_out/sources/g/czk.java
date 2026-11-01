package g;

import com.bytedance.android.live.base.api.push.ILivePush;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes3.dex */
public final class czk implements brb {

    /* renamed from: b, reason: collision with root package name */
    public static final czk f13807b = new czk(0);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13808c;

    public /* synthetic */ czk(int i) {
        this.f13808c = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0142 A[Catch: IOException -> 0x00c5, TryCatch #10 {IOException -> 0x00c5, blocks: (B:26:0x00bd, B:34:0x00c8, B:37:0x00eb, B:38:0x0106, B:42:0x012c, B:44:0x0142, B:51:0x015b, B:53:0x015f, B:56:0x016c, B:58:0x017f, B:59:0x0189, B:60:0x0193, B:63:0x014c, B:66:0x0196, B:67:0x0199, B:40:0x010a), top: B:25:0x00bd, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x015f A[Catch: IOException -> 0x00c5, TryCatch #10 {IOException -> 0x00c5, blocks: (B:26:0x00bd, B:34:0x00c8, B:37:0x00eb, B:38:0x0106, B:42:0x012c, B:44:0x0142, B:51:0x015b, B:53:0x015f, B:56:0x016c, B:58:0x017f, B:59:0x0189, B:60:0x0193, B:63:0x014c, B:66:0x0196, B:67:0x0199, B:40:0x010a), top: B:25:0x00bd, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x016c A[Catch: IOException -> 0x00c5, TryCatch #10 {IOException -> 0x00c5, blocks: (B:26:0x00bd, B:34:0x00c8, B:37:0x00eb, B:38:0x0106, B:42:0x012c, B:44:0x0142, B:51:0x015b, B:53:0x015f, B:56:0x016c, B:58:0x017f, B:59:0x0189, B:60:0x0193, B:63:0x014c, B:66:0x0196, B:67:0x0199, B:40:0x010a), top: B:25:0x00bd, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a2  */
    @Override // g.brb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final enb a(dpe dpeVar) {
        hdt hdtVar;
        IOException iOException;
        int i;
        enb o;
        ehi ehiVar;
        IOException iOException2;
        switch (this.f13808c) {
            case 0:
                ib ibVar = dpeVar.f14584d;
                synchronized (ibVar) {
                    try {
                        if (!ibVar.f19410f) {
                            throw new IllegalStateException("released");
                        }
                        if (ibVar.f19411g) {
                            throw new IllegalStateException("Check failed.");
                        }
                        if (ibVar.f19408d) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                cpr cprVar = ibVar.f19406b;
                bff.d(cprVar);
                fys fysVar = ibVar.j;
                try {
                    aju ajuVar = new aju(ibVar, cprVar, cprVar.j(dpeVar.f14585e, dpeVar.i, dpeVar.f14581a, fysVar.f17662ab, !bff.n((String) dpeVar.f14583c.f13887f, "GET")).v(fysVar, dpeVar));
                    ibVar.k = ajuVar;
                    ibVar.m = ajuVar;
                    synchronized (ibVar) {
                        ibVar.f19408d = true;
                        ibVar.f19411g = true;
                    }
                    if (ibVar.n) {
                        throw new IOException("Canceled");
                    }
                    return dpe.j(dpeVar, 0, ajuVar, null, 61).k(dpeVar.f14583c);
                } catch (fvg e2) {
                    cprVar.l(e2.c());
                    throw e2;
                } catch (IOException e3) {
                    cprVar.l(e3);
                    throw new fvg(e3);
                }
            default:
                aju ajuVar2 = dpeVar.f14582b;
                bff.d(ajuVar2);
                ib ibVar2 = (ib) ajuVar2.f10346d;
                axn axnVar = (axn) ajuVar2.f10343a;
                gba gbaVar = (gba) ajuVar2.f10344b;
                daw dawVar = dpeVar.f14583c;
                sz szVar = (sz) dawVar.f13883b;
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    try {
                        axnVar.e(dawVar);
                        try {
                            boolean z = true;
                            if (!ckd.l((String) dawVar.f13887f) || szVar == null) {
                                iOException2 = null;
                                ibVar2.w(ajuVar2, true, false, null);
                                hdtVar = null;
                            } else {
                                try {
                                    if ("100-continue".equalsIgnoreCase(((dvq) dawVar.f13882a).c("Expect"))) {
                                        try {
                                            axnVar.c();
                                            hdtVar = ajuVar2.i(true);
                                        } catch (IOException e4) {
                                            ajuVar2.f(e4);
                                            throw e4;
                                        }
                                    } else {
                                        hdtVar = null;
                                    }
                                } catch (IOException e5) {
                                    e = e5;
                                    hdtVar = null;
                                    if (!(e instanceof fhb)) {
                                        throw e;
                                    }
                                    if (!ajuVar2.f10345c) {
                                        throw e;
                                    }
                                    iOException = e;
                                    if (hdtVar == null) {
                                    }
                                    hdtVar.f19298f = dawVar;
                                    hdtVar.f19297e = gbaVar.j;
                                    hdtVar.f19294b = currentTimeMillis;
                                    hdtVar.f19296d = System.currentTimeMillis();
                                    enb o2 = hdtVar.o();
                                    i = o2.f15840g;
                                    if (i != 100) {
                                    }
                                    hdt i2 = ajuVar2.i(false);
                                    bff.d(i2);
                                    i2.f19298f = dawVar;
                                    i2.f19297e = gbaVar.j;
                                    i2.f19294b = currentTimeMillis;
                                    i2.f19296d = System.currentTimeMillis();
                                    o2 = i2.o();
                                    i = o2.f15840g;
                                    hdt q = o2.q();
                                    try {
                                        String o3 = enb.o("Content-Type", o2);
                                        long f2 = axnVar.f(o2);
                                        q.m = new dhd(o3, f2, baf.ai(new gnj(ajuVar2, axnVar.a(o2), f2)), 0);
                                        o = q.o();
                                        if (!ILivePush.ClickType.CLOSE.equalsIgnoreCase(((dvq) o.i.f13882a).c("Connection"))) {
                                        }
                                        axnVar.b().w();
                                        if (i != 204) {
                                        }
                                        ehiVar = o.f15835b;
                                        if ((ehiVar != null ? ehiVar.d() : -1L) > 0) {
                                        }
                                        return o;
                                    } catch (IOException e6) {
                                        ajuVar2.f(e6);
                                        throw e6;
                                    }
                                }
                                try {
                                    if (hdtVar == null) {
                                        bff.d(szVar);
                                        long c2 = szVar.c();
                                        ago w = baf.w(new mq(ajuVar2, axnVar.h(dawVar, c2), c2));
                                        szVar.e(w);
                                        w.close();
                                    } else {
                                        ibVar2.w(ajuVar2, true, false, null);
                                        if (gbaVar.s == null) {
                                            z = false;
                                        }
                                        if (!z) {
                                            axnVar.b().w();
                                        }
                                    }
                                    iOException2 = null;
                                } catch (IOException e7) {
                                    e = e7;
                                    if (!(e instanceof fhb)) {
                                    }
                                }
                            }
                        } catch (IOException e8) {
                            e = e8;
                            hdtVar = null;
                            if (!(e instanceof fhb)) {
                            }
                        }
                    } catch (IOException e9) {
                        ajuVar2.f(e9);
                        throw e9;
                    }
                } catch (IOException e10) {
                    e = e10;
                }
                try {
                    axnVar.d();
                    iOException = iOException2;
                    if (hdtVar == null) {
                        try {
                            hdtVar = ajuVar2.i(false);
                            bff.d(hdtVar);
                        } catch (IOException e11) {
                            if (iOException == null) {
                                throw e11;
                            }
                            cux.ag(iOException, e11);
                            throw iOException;
                        }
                    }
                    hdtVar.f19298f = dawVar;
                    hdtVar.f19297e = gbaVar.j;
                    hdtVar.f19294b = currentTimeMillis;
                    hdtVar.f19296d = System.currentTimeMillis();
                    enb o22 = hdtVar.o();
                    i = o22.f15840g;
                    if (i != 100) {
                        if (102 <= i && i < 200) {
                        }
                        hdt q2 = o22.q();
                        String o32 = enb.o("Content-Type", o22);
                        long f22 = axnVar.f(o22);
                        q2.m = new dhd(o32, f22, baf.ai(new gnj(ajuVar2, axnVar.a(o22), f22)), 0);
                        o = q2.o();
                        if (!ILivePush.ClickType.CLOSE.equalsIgnoreCase(((dvq) o.i.f13882a).c("Connection")) || ILivePush.ClickType.CLOSE.equalsIgnoreCase(enb.o("Connection", o))) {
                            axnVar.b().w();
                        }
                        if (i != 204 || i == 205) {
                            ehiVar = o.f15835b;
                            if ((ehiVar != null ? ehiVar.d() : -1L) > 0) {
                                StringBuilder sb = new StringBuilder("HTTP ");
                                sb.append(i);
                                sb.append(" had non-zero Content-Length: ");
                                ehi ehiVar2 = o.f15835b;
                                sb.append(ehiVar2 != null ? Long.valueOf(ehiVar2.d()) : null);
                                throw new ProtocolException(sb.toString());
                            }
                        }
                        return o;
                    }
                    hdt i22 = ajuVar2.i(false);
                    bff.d(i22);
                    i22.f19298f = dawVar;
                    i22.f19297e = gbaVar.j;
                    i22.f19294b = currentTimeMillis;
                    i22.f19296d = System.currentTimeMillis();
                    o22 = i22.o();
                    i = o22.f15840g;
                    hdt q22 = o22.q();
                    String o322 = enb.o("Content-Type", o22);
                    long f222 = axnVar.f(o22);
                    q22.m = new dhd(o322, f222, baf.ai(new gnj(ajuVar2, axnVar.a(o22), f222)), 0);
                    o = q22.o();
                    if (!ILivePush.ClickType.CLOSE.equalsIgnoreCase(((dvq) o.i.f13882a).c("Connection"))) {
                    }
                    axnVar.b().w();
                    if (i != 204) {
                    }
                    ehiVar = o.f15835b;
                    if ((ehiVar != null ? ehiVar.d() : -1L) > 0) {
                    }
                    return o;
                } catch (IOException e12) {
                    try {
                        ajuVar2.f(e12);
                        throw e12;
                    } catch (IOException e13) {
                        e = e13;
                        if (!(e instanceof fhb)) {
                        }
                    }
                }
                break;
        }
    }
}
