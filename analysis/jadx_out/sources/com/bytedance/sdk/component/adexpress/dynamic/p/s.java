package com.bytedance.sdk.component.adexpress.dynamic.p;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.dynamic.p.d;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    protected d f1776d;
    public com.bytedance.sdk.component.adexpress.dynamic.ox.d dq;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.ia ox;
    private dq p;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        float f1777d;
        float dq;
        float ox;
    }

    public s(double d2, int i, double d3, String str, mp mpVar) {
        this.f1776d = new d(d2, i, d3, str, mpVar);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.ox.kk dq(com.bytedance.sdk.component.adexpress.dynamic.ox.d dVar, com.bytedance.sdk.component.adexpress.dynamic.ox.iw iwVar, float f2, float f3) {
        float f4;
        float f5;
        float f6 = dVar.dq;
        float f7 = dVar.f1749d;
        float m = iwVar.m();
        float wi = iwVar.wi();
        float xv = iwVar.xv();
        float cc = iwVar.cc();
        boolean dc = iwVar.dc();
        boolean jw = iwVar.jw();
        boolean fd = iwVar.fd();
        boolean bu = iwVar.bu();
        String cv = iwVar.cv();
        float f8 = dVar.ox;
        float f9 = dVar.p;
        if (TextUtils.equals(cv, "0")) {
            if (dc) {
                f6 = dVar.dq + m;
            } else if (jw) {
                f6 = ((dVar.dq + f8) - xv) - f2;
            }
            if (fd) {
                f5 = dVar.f1749d;
                f7 = f5 + wi;
            } else if (bu) {
                f4 = dVar.f1749d;
                f7 = ((f4 + f9) - cc) - f3;
            }
        } else if (TextUtils.equals(cv, "1")) {
            f6 = dVar.dq + ((f8 - f2) / 2.0f);
            if (fd) {
                f5 = dVar.f1749d;
                f7 = f5 + wi;
            } else if (bu) {
                f4 = dVar.f1749d;
                f7 = ((f4 + f9) - cc) - f3;
            }
        } else if (TextUtils.equals(cv, "2")) {
            f7 = dVar.f1749d + ((f9 - f3) / 2.0f);
            if (dc) {
                f6 = dVar.dq + m;
            } else if (jw) {
                f6 = ((dVar.dq + f8) - xv) - f2;
            }
        } else if (TextUtils.equals(cv, "3")) {
            f6 = dVar.dq + ((f8 - f2) / 2.0f);
            f7 = ((f9 - f3) / 2.0f) + dVar.f1749d;
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.ox.kk(f6, f7);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.ox.kk dq(com.bytedance.sdk.component.adexpress.dynamic.ox.iw iwVar, d.ox oxVar, d.ox oxVar2) {
        float m = iwVar.m();
        float wi = iwVar.wi();
        float xv = iwVar.xv();
        float cc = iwVar.cc();
        boolean dc = iwVar.dc();
        boolean jw = iwVar.jw();
        boolean fd = iwVar.fd();
        boolean bu = iwVar.bu();
        if (!dc) {
            if (jw) {
                float f2 = this.p.dq;
                m = ((f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? Math.min(f2, oxVar.dq) : oxVar.dq) - xv) - oxVar2.dq;
            } else {
                m = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
        }
        if (!fd) {
            if (bu) {
                float f3 = this.p.f1777d;
                if (f3 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    f3 = oxVar.f1771d;
                }
                wi = (f3 - cc) - oxVar2.f1771d;
            } else {
                wi = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.ox.kk(m, wi);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x027d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.bytedance.sdk.component.adexpress.dynamic.ox.d dq(com.bytedance.sdk.component.adexpress.dynamic.ox.d dVar, float f2) {
        float f3;
        float f4;
        int i;
        com.bytedance.sdk.component.adexpress.dynamic.ox.iw iwVar;
        float f5;
        float f6;
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it;
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it2;
        float f7;
        float f8;
        com.bytedance.sdk.component.adexpress.dynamic.ox.kk kkVar;
        float f9;
        com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar = dVar.iw;
        if (iaVar != null) {
            iaVar.i();
            List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw = iaVar.fw();
            if (fw != null && fw.size() > 0) {
                com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = iaVar.o().s();
                float fw2 = s.fw();
                float f10 = s.f();
                float q = s.q();
                float jy = s.jy();
                float ig = s.ig();
                String nh = s.nh();
                String vf = s.vf();
                float f11 = dVar.dq + jy;
                float f12 = dVar.f1749d + fw2;
                float f13 = ig * 2.0f;
                float f14 = ((dVar.ox - jy) - f10) - f13;
                float f15 = ((dVar.p - fw2) - q) - f13;
                com.bytedance.sdk.component.adexpress.dynamic.ox.kk kkVar2 = new com.bytedance.sdk.component.adexpress.dynamic.ox.kk(f11, f12);
                if (dVar.mn == null) {
                    dVar.mn = new ArrayList();
                }
                Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> it3 = fw.iterator();
                float f16 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                while (it3.hasNext()) {
                    d.ox dq2 = this.f1776d.dq(it3.next());
                    if (dq2 != null) {
                        f16 += dq2.f1771d;
                    }
                }
                String str = "space-between";
                String str2 = "space-around";
                if (f16 < f15) {
                    if (TextUtils.equals(vf, "center")) {
                        f3 = (f15 - f16) / 2.0f;
                    } else if (TextUtils.equals(vf, "flex-end")) {
                        f3 = f15 - f16;
                    } else {
                        if (TextUtils.equals(vf, "space-around")) {
                            f3 = o.dq((f15 - f16) / (fw.size() + 1));
                            f4 = f3;
                        } else if (TextUtils.equals(vf, "space-between") && fw.size() > 1) {
                            f4 = o.dq((f15 - f16) / (fw.size() - 1));
                            f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        kkVar2.f1761d += f3;
                        float f17 = f2;
                        i = 0;
                        while (i < fw.size()) {
                            List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list = fw.get(i);
                            i++;
                            List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> list2 = fw;
                            if (i >= dVar.mn.size()) {
                                iwVar = s;
                                int i2 = 0;
                                for (int size = (i - dVar.mn.size()) + 1; i2 < size; size = size) {
                                    dVar.mn.add(new ArrayList());
                                    i2++;
                                }
                            } else {
                                iwVar = s;
                            }
                            Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it4 = list.iterator();
                            float f18 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            while (true) {
                                Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it5 = it4;
                                if (!it4.hasNext()) {
                                    break;
                                }
                                com.bytedance.sdk.component.adexpress.dynamic.ox.ia next = it5.next();
                                com.bytedance.sdk.component.adexpress.dynamic.ox.iw s2 = next.o().s();
                                float f19 = f18;
                                String ji = s2.ji();
                                float f20 = f4;
                                int ha = s2.ha();
                                float f21 = f17;
                                if (TextUtils.equals(ji, "flex") || ha == 1 || ha == 2) {
                                    it4 = it5;
                                    f17 = f21;
                                    f18 = f19;
                                } else {
                                    d.ox dq3 = this.f1776d.dq(next);
                                    f18 = dq3 != null ? f19 + dq3.dq : f19;
                                    it4 = it5;
                                    f17 = f21;
                                }
                                f4 = f20;
                            }
                            float f22 = f4;
                            float f23 = f17;
                            float max = Math.max(f14 - f18, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                            Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it6 = list.iterator();
                            float f24 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            while (it6.hasNext()) {
                                com.bytedance.sdk.component.adexpress.dynamic.ox.ia next2 = it6.next();
                                com.bytedance.sdk.component.adexpress.dynamic.ox.iw s3 = next2.o().s();
                                Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it7 = it6;
                                float f25 = f24;
                                if (s3.ha() == 1 || s3.ha() == 2) {
                                    it6 = it7;
                                    f24 = f25;
                                } else {
                                    d.ox dq4 = this.f1776d.dq(next2);
                                    f24 = dq4 != null ? f25 + dq4.dq : f25;
                                    it6 = it7;
                                }
                            }
                            float f26 = f24;
                            if (f26 < f14) {
                                if (TextUtils.equals(nh, "center")) {
                                    f5 = (f14 - f26) / 2.0f;
                                } else if (TextUtils.equals(nh, "flex-end")) {
                                    f5 = f14 - f26;
                                } else {
                                    if (TextUtils.equals(nh, str2)) {
                                        f5 = o.dq((f14 - f26) / (list.size() + 1));
                                        f6 = f5;
                                    } else if (TextUtils.equals(nh, str) && list.size() > 1) {
                                        f6 = o.dq((f14 - f26) / (list.size() - 1.0f));
                                        f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    }
                                    kkVar2.dq += f5;
                                    it = list.iterator();
                                    float f27 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    while (it.hasNext()) {
                                        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it8 = it;
                                        com.bytedance.sdk.component.adexpress.dynamic.ox.ia next3 = it.next();
                                        String str3 = str;
                                        float f28 = this.f1776d.dq(next3) != null ? this.f1776d.dq(next3).f1771d : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                        com.bytedance.sdk.component.adexpress.dynamic.ox.iw s4 = next3.o().s();
                                        f27 = Math.max(f27, (s4.ha() == 1 || s4.ha() == 2) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : f28);
                                        it = it8;
                                        str = str3;
                                    }
                                    String str4 = str;
                                    it2 = list.iterator();
                                    while (it2.hasNext()) {
                                        com.bytedance.sdk.component.adexpress.dynamic.ox.ia next4 = it2.next();
                                        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it9 = it2;
                                        d.ox dq5 = this.f1776d.dq(next4);
                                        String str5 = str2;
                                        com.bytedance.sdk.component.adexpress.dynamic.ox.iw s5 = next4.o().s();
                                        String str6 = nh;
                                        float t = s5.t();
                                        float uh = s5.uh();
                                        float gx = s5.gx();
                                        float by = s5.by();
                                        float f29 = dq5 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : dq5.dq;
                                        float f30 = dq5 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : dq5.f1771d;
                                        float f31 = f29;
                                        float f32 = TextUtils.equals(iaVar.ox(), "root") ? i : f23;
                                        float f33 = f6;
                                        com.bytedance.sdk.component.adexpress.dynamic.ox.kk dq6 = s5.ha() == 1 ? dq(dVar, s5, (f31 - uh) - by, (f30 - t) - gx) : kkVar2;
                                        if (s5.ha() == 2) {
                                            f7 = f27;
                                            f8 = f14;
                                            kkVar = dq(s5, this.f1776d.dq(this.ox), new d.ox((f31 - uh) - by, (f30 - t) - gx));
                                        } else {
                                            f7 = f27;
                                            f8 = f14;
                                            kkVar = dq6;
                                        }
                                        String mc = iwVar.mc();
                                        if (f7 > f30 && !TextUtils.equals(mc, "flex-start")) {
                                            mc.getClass();
                                            if (mc.equals("center")) {
                                                f9 = (f7 - f30) / 2.0f;
                                            } else if (mc.equals("flex-end")) {
                                                f9 = f7 - f30;
                                            }
                                            com.bytedance.sdk.component.adexpress.dynamic.ox.d dVar2 = new com.bytedance.sdk.component.adexpress.dynamic.ox.d();
                                            dVar2.dq = kkVar.dq + by;
                                            dVar2.f1749d = kkVar.f1761d + t + f9;
                                            dVar2.ox = (f31 - uh) - by;
                                            dVar2.p = (f30 - t) - gx;
                                            dVar2.s = dVar.s + "." + next4.ox();
                                            dVar2.ia = dVar;
                                            dVar2.iw = next4;
                                            dVar2.kk = max;
                                            dVar2.o = list;
                                            next4.ox(dVar2.dq);
                                            dVar2.iw.p(dVar2.f1749d);
                                            dVar2.iw.s(dVar2.ox);
                                            dVar2.iw.iw(dVar2.p);
                                            dVar.mn.get(i).add(dq(dVar2, f32));
                                            if (s5.ha() != 1 && s5.ha() != 2) {
                                                kkVar2.dq = f31 + f33 + kkVar2.dq;
                                            }
                                            f23 = f32;
                                            nh = str6;
                                            str2 = str5;
                                            f6 = f33;
                                            f27 = f7;
                                            f14 = f8;
                                            it2 = it9;
                                        }
                                        f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                        com.bytedance.sdk.component.adexpress.dynamic.ox.d dVar22 = new com.bytedance.sdk.component.adexpress.dynamic.ox.d();
                                        dVar22.dq = kkVar.dq + by;
                                        dVar22.f1749d = kkVar.f1761d + t + f9;
                                        dVar22.ox = (f31 - uh) - by;
                                        dVar22.p = (f30 - t) - gx;
                                        dVar22.s = dVar.s + "." + next4.ox();
                                        dVar22.ia = dVar;
                                        dVar22.iw = next4;
                                        dVar22.kk = max;
                                        dVar22.o = list;
                                        next4.ox(dVar22.dq);
                                        dVar22.iw.p(dVar22.f1749d);
                                        dVar22.iw.s(dVar22.ox);
                                        dVar22.iw.iw(dVar22.p);
                                        dVar.mn.get(i).add(dq(dVar22, f32));
                                        if (s5.ha() != 1) {
                                            kkVar2.dq = f31 + f33 + kkVar2.dq;
                                        }
                                        f23 = f32;
                                        nh = str6;
                                        str2 = str5;
                                        f6 = f33;
                                        f27 = f7;
                                        f14 = f8;
                                        it2 = it9;
                                    }
                                    kkVar2.dq = f11;
                                    kkVar2.f1761d = f27 + f22 + kkVar2.f1761d;
                                    str = str4;
                                    fw = list2;
                                    s = iwVar;
                                    f17 = f23;
                                    f4 = f22;
                                }
                                f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                kkVar2.dq += f5;
                                it = list.iterator();
                                float f272 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                while (it.hasNext()) {
                                }
                                String str42 = str;
                                it2 = list.iterator();
                                while (it2.hasNext()) {
                                }
                                kkVar2.dq = f11;
                                kkVar2.f1761d = f272 + f22 + kkVar2.f1761d;
                                str = str42;
                                fw = list2;
                                s = iwVar;
                                f17 = f23;
                                f4 = f22;
                            }
                            f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            kkVar2.dq += f5;
                            it = list.iterator();
                            float f2722 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            while (it.hasNext()) {
                            }
                            String str422 = str;
                            it2 = list.iterator();
                            while (it2.hasNext()) {
                            }
                            kkVar2.dq = f11;
                            kkVar2.f1761d = f2722 + f22 + kkVar2.f1761d;
                            str = str422;
                            fw = list2;
                            s = iwVar;
                            f17 = f23;
                            f4 = f22;
                        }
                    }
                    f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    kkVar2.f1761d += f3;
                    float f172 = f2;
                    i = 0;
                    while (i < fw.size()) {
                    }
                }
                f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                kkVar2.f1761d += f3;
                float f1722 = f2;
                i = 0;
                while (i < fw.size()) {
                }
            }
        }
        return dVar;
    }

    public void dq() {
        this.f1776d.dq();
    }

    public void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.d dVar) {
        if (dVar == null) {
            return;
        }
        dVar.iw.o().getType();
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.d>> list = dVar.mn;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ox.d> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.d> it = list2.iterator();
                while (it.hasNext()) {
                    dq(it.next());
                }
            }
        }
    }

    public void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, float f2, float f3) {
        if (iaVar != null) {
            this.ox = iaVar;
        }
        com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar2 = this.ox;
        float ia = iaVar2.ia();
        float kk = iaVar2.kk();
        float f4 = TextUtils.equals(iaVar2.o().s().h(), "fixed") ? kk : 65536.0f;
        this.f1776d.dq();
        this.f1776d.ox(iaVar2, ia, f4);
        d.ox dq2 = this.f1776d.dq(iaVar2);
        com.bytedance.sdk.component.adexpress.dynamic.ox.d dVar = new com.bytedance.sdk.component.adexpress.dynamic.ox.d();
        dVar.dq = f2;
        dVar.f1749d = f3;
        if (dq2 != null) {
            ia = dq2.dq;
        }
        dVar.ox = ia;
        if (dq2 != null) {
            kk = dq2.f1771d;
        }
        dVar.p = kk;
        dVar.s = "root";
        dVar.kk = 1280.0f;
        dVar.iw = iaVar2;
        iaVar2.ox(f2);
        dVar.iw.p(dVar.f1749d);
        dVar.iw.s(dVar.ox);
        dVar.iw.iw(dVar.p);
        com.bytedance.sdk.component.adexpress.dynamic.ox.d dq3 = dq(dVar, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.dq = dq3;
        dq(dq3);
    }

    public void dq(dq dqVar) {
        this.p = dqVar;
    }
}
