package com.bytedance.msdk.ox.dq;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.f.d.d.mp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class mn extends p {
    private com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq ox;
    private com.bytedance.msdk.ox.ox.d.dq.ox p;

    public mn(com.bytedance.msdk.ox.s.d.dq dqVar, com.bytedance.msdk.ox.ox.d.dq.ox oxVar) {
        super(dqVar);
        this.p = oxVar;
    }

    private void d(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar, List<View> list4) {
        if (((p) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            f2.m(8067, viewGroup);
            f2.m(8068, list);
            f2.m(8069, list2);
            f2.m(8070, list3);
            f2.m(8071, no.dq(noVar));
            f2.m(8053, list4);
            ((p) this).dq.call(8159, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public int cd() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? ((Integer) bridge.call(8193, null, Integer.class)).intValue() : super.cd();
    }

    @Override // com.bytedance.msdk.d.s
    public int d() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? ((Integer) bridge.call(8161, null, Integer.class)).intValue() : super.d();
    }

    @Override // com.bytedance.msdk.ox.dq.p
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        com.bytedance.msdk.api.p.dq.ox.d dVar;
        com.bytedance.msdk.api.p.dq.ox.d dVar2;
        if (i == 8130) {
            if (qz() == 5) {
                if (cv() == 5) {
                    com.bytedance.msdk.api.p.dq.ox.d dVar3 = this.no;
                    if (dVar3 != null) {
                        dVar3.dq(null);
                    }
                } else {
                    com.bytedance.msdk.api.p.dq.mn.ox oxVar = this.iw;
                    if (oxVar != null) {
                        oxVar.dq(null);
                    }
                }
            } else if (qz() == 9 && (dVar2 = this.no) != null) {
                dVar2.dq(null);
            }
        } else if (i == 8113) {
            if (qz() == 5) {
                if (cv() == 5) {
                    com.bytedance.msdk.api.p.dq.ox.d dVar4 = this.no;
                    if (dVar4 != null) {
                        dVar4.dq();
                    }
                } else {
                    com.bytedance.msdk.api.p.dq.mn.ox oxVar2 = this.iw;
                    if (oxVar2 != null) {
                        oxVar2.dq();
                    }
                }
            } else if (qz() == 9 && (dVar = this.no) != null) {
                dVar.dq();
            }
        } else if (i == 8131) {
            if (this.p != null) {
                this.p.dq(this, valueSet.stringValue(8036));
            }
        } else if (i == 8132) {
            com.bytedance.msdk.ox.s.d.dq dqVar = ((p) this).f1131d;
            if (dqVar != null) {
                com.bytedance.msdk.core.d.dq.dq(dqVar.d());
            }
            if (this.ox != null) {
                this.ox.dq(valueSet.intValue(8038), valueSet.stringValue(8039), false);
            }
        } else if (i == 8133) {
            float floatValue = valueSet.floatValue(8040);
            float floatValue2 = valueSet.floatValue(8041);
            if (qz() == 5) {
                if (cv() == 5) {
                    com.bytedance.msdk.api.p.dq.ox.d dVar5 = this.no;
                    if (dVar5 instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                        ((com.bytedance.msdk.api.p.dq.ox.s) dVar5).dq(floatValue, floatValue2);
                    }
                } else {
                    com.bytedance.msdk.api.p.dq.mn.ox oxVar3 = this.iw;
                    if (oxVar3 instanceof com.bytedance.msdk.api.p.dq.mn.mn) {
                        ((com.bytedance.msdk.api.p.dq.mn.mn) oxVar3).dq(floatValue, floatValue2);
                    }
                }
            } else if (qz() == 9) {
                com.bytedance.msdk.api.p.dq.ox.d dVar6 = this.no;
                if (dVar6 instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                    ((com.bytedance.msdk.api.p.dq.ox.s) dVar6).dq(floatValue, floatValue2);
                }
            }
        } else if (i == 8134) {
            int intValue = valueSet.intValue(8014);
            String stringValue = valueSet.stringValue(8015);
            View view = (View) valueSet.objectValue(8042, View.class);
            if (qz() == 5) {
                if (cv() == 5) {
                    com.bytedance.msdk.api.p.dq.ox.d dVar7 = this.no;
                    if (dVar7 instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                        ((com.bytedance.msdk.api.p.dq.ox.s) dVar7).dq(view, stringValue, intValue);
                    }
                } else {
                    com.bytedance.msdk.api.p.dq.mn.ox oxVar4 = this.iw;
                    if (oxVar4 instanceof com.bytedance.msdk.api.p.dq.mn.mn) {
                        ((com.bytedance.msdk.api.p.dq.mn.mn) oxVar4).dq(view, stringValue, intValue);
                    }
                }
            } else if (qz() == 9) {
                com.bytedance.msdk.api.p.dq.ox.d dVar8 = this.no;
                if (dVar8 instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                    ((com.bytedance.msdk.api.p.dq.ox.s) dVar8).dq(view, stringValue, intValue);
                }
            }
        } else if (i == 8140) {
            String stringValue2 = valueSet.stringValue(8045);
            String stringValue3 = valueSet.stringValue(8046);
            int intValue2 = valueSet.intValue(8047);
            String stringValue4 = valueSet.stringValue(8048);
            String stringValue5 = valueSet.stringValue(8049);
            String stringValue6 = valueSet.stringValue(8050);
            int intValue3 = valueSet.intValue(8051);
            int intValue4 = valueSet.intValue(8052);
            List<String> list = (List) valueSet.objectValue(8053, List.class);
            String stringValue7 = valueSet.stringValue(8054);
            boolean booleanValue = valueSet.booleanValue(8055);
            String stringValue8 = valueSet.stringValue(8056);
            String stringValue9 = valueSet.stringValue(8057);
            Object objectValue = valueSet.objectValue(8036, Object.class);
            String stringValue10 = valueSet.stringValue(8058);
            double doubleValue = valueSet.doubleValue(8016);
            boolean booleanValue2 = valueSet.booleanValue(8033);
            int intValue5 = valueSet.intValue(8060);
            String stringValue11 = valueSet.stringValue(8061);
            String stringValue12 = valueSet.stringValue(8061);
            long longValue = valueSet.longValue(8078);
            String stringValue13 = valueSet.stringValue(8079);
            Map<String, String> map = (Map) valueSet.objectValue(8427, Map.class);
            String stringValue14 = valueSet.stringValue(8080);
            String stringValue15 = valueSet.stringValue(8081);
            double doubleValue2 = valueSet.doubleValue(8082);
            int intValue6 = valueSet.intValue(8059);
            String stringValue16 = valueSet.stringValue(8551);
            int intValue7 = valueSet.intValue(8553);
            n(stringValue2);
            op(stringValue3);
            i(intValue2);
            kx(stringValue4);
            ir(stringValue5);
            h(stringValue6);
            r(intValue3);
            gh(intValue4);
            dq(list);
            bl(stringValue7);
            ia(booleanValue);
            i(stringValue8);
            le(stringValue9);
            if (TextUtils.equals(m(), MediationConstant.ADN_BAIDU)) {
                dq(MediationConstant.BAIDU_DISLIKE_INFO, objectValue);
            }
            mp(stringValue10);
            dq(doubleValue);
            mn(booleanValue2);
            ig(intValue5);
            ji(stringValue11);
            r(stringValue12);
            d(longValue);
            k(stringValue13);
            s(map);
            wp(stringValue14);
            e(stringValue15);
            p(doubleValue2);
            mp(intValue6);
            no(stringValue16);
            ox(intValue7);
        } else {
            if (i == 8143) {
                return (T) Double.valueOf(dk());
            }
            if (i == 8145) {
                com.bytedance.msdk.api.p.dq.mn.kk kkVar = this.mn;
                if (kkVar != null) {
                    kkVar.uh();
                }
            } else if (i == 8146) {
                com.bytedance.msdk.api.p.dq.mn.kk kkVar2 = this.mn;
                if (kkVar2 != null) {
                    kkVar2.xz();
                }
            } else if (i == 8118) {
                com.bytedance.msdk.api.p.dq.mn.kk kkVar3 = this.mn;
                if (kkVar3 != null) {
                    kkVar3.v();
                }
            } else if (i == 8117) {
                int intValue8 = valueSet.intValue(8014);
                String stringValue17 = valueSet.stringValue(8015);
                com.bytedance.msdk.api.p.dq.mn.kk kkVar4 = this.mn;
                if (kkVar4 != null) {
                    kkVar4.dq(new com.bytedance.msdk.api.dq(intValue8, stringValue17));
                }
            } else if (i == 8150) {
                com.bytedance.msdk.api.p.dq.mn.kk kkVar5 = this.mn;
                if (kkVar5 != null) {
                    kkVar5.yy();
                }
            } else if (i == 1025) {
                if (this.mn != null) {
                    this.mn.dq(valueSet.longValue(8072), valueSet.longValue(8073));
                }
            } else if (i == 8152) {
                com.bytedance.msdk.api.p.dq.d dVar9 = this.ia;
                if (dVar9 != null) {
                    dVar9.dq();
                }
            } else if (i != 8153) {
                if (i == 8187) {
                    if (this.ia != null) {
                        this.ia.dq(valueSet.longValue(8062), valueSet.longValue(8063), valueSet.intValue(8064), valueSet.intValue(8065), "", "");
                    }
                } else if (i == 8155) {
                    if (this.ia != null) {
                        this.ia.dq(valueSet.longValue(8062), valueSet.stringValue(8066), valueSet.stringValue(8056));
                    }
                } else if (i == 8156) {
                    if (this.ia != null) {
                        this.ia.dq(valueSet.stringValue(8066), valueSet.stringValue(8056));
                    }
                } else if (i == 8157) {
                    if (this.ia != null) {
                        this.ia.d(valueSet.longValue(8062), valueSet.longValue(8063), valueSet.stringValue(8066), valueSet.stringValue(8056));
                    }
                } else if (i == 8158) {
                    if (this.ia != null) {
                        this.ia.dq(valueSet.longValue(8062), valueSet.longValue(8063), valueSet.stringValue(8066), valueSet.stringValue(8056));
                    }
                } else {
                    if (i == 8160) {
                        return (T) Boolean.valueOf(yy());
                    }
                    if (i == 6069) {
                        return (T) Integer.valueOf(yo());
                    }
                    if (i == 8185) {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = this.ox;
                        if (dqVar2 != null) {
                            dqVar2.dq();
                        }
                    } else if (i == 8184) {
                        com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar3 = this.ox;
                        if (dqVar3 != null) {
                            dqVar3.d();
                        }
                    } else {
                        if (i == 8196) {
                            return (T) Boolean.valueOf(mc());
                        }
                        if (i == 8197) {
                            com.bytedance.msdk.api.p.dq.p pVar = this.kk;
                            if (pVar != null) {
                                pVar.dq();
                            }
                        } else if (i == 8227) {
                            if (valueSet != null) {
                                p((Map<String, Object>) valueSet.objectValue(8075, Map.class));
                            }
                        } else if (i == 6107 && this.o != null) {
                            this.o.dq(valueSet.intValue(20055));
                        }
                    }
                }
            }
        }
        return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar, List<View> list4) {
        super.dq(activity, viewGroup, list, list2, list3, noVar, list4);
        d(activity, viewGroup, list, list2, list3, noVar, list4);
    }

    @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.ox = dqVar;
        if (((p) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            ((p) this).dq.call(6085, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void f() {
        Bridge bridge = ((p) this).dq;
        if (bridge != null) {
            bridge.call(8192, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void fw() {
        Bridge bridge = ((p) this).dq;
        if (bridge != null) {
            bridge.call(6093, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public View gh() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? (View) bridge.call(6164, null, View.class) : super.gh();
    }

    @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
    public mp i() {
        Map map;
        Bridge bridge = ((p) this).dq;
        if (bridge != null && (map = (Map) bridge.call(8269, null, Map.class)) != null) {
            Object obj = map.get("imgUrl");
            final Object obj2 = map.get(MediaFormat.KEY_WIDTH);
            final Object obj3 = map.get(MediaFormat.KEY_HEIGHT);
            final Object obj4 = map.get("valid");
            final Object obj5 = map.get(MediationConstant.EXTRA_DURATION);
            if (obj instanceof String) {
                final String str = (String) obj;
                if (!TextUtils.isEmpty(str)) {
                    return new mp() { // from class: com.bytedance.msdk.ox.dq.mn.1
                        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
                        public int d() {
                            Object obj6 = obj2;
                            if (obj6 instanceof Integer) {
                                return ((Integer) obj6).intValue();
                            }
                            return 0;
                        }

                        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
                        public int dq() {
                            Object obj6 = obj3;
                            if (obj6 instanceof Integer) {
                                return ((Integer) obj6).intValue();
                            }
                            return 0;
                        }

                        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
                        public String ox() {
                            return str;
                        }

                        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
                        public double p() {
                            Object obj6 = obj5;
                            if (obj6 instanceof Double) {
                                return ((Double) obj6).doubleValue();
                            }
                            return 0.0d;
                        }

                        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
                        public boolean s() {
                            Object obj6 = obj4;
                            if (obj6 instanceof Boolean) {
                                return ((Boolean) obj6).booleanValue();
                            }
                            return false;
                        }
                    };
                }
            }
        }
        return super.i();
    }

    @Override // com.bytedance.msdk.d.s
    public View ig() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? (View) bridge.call(6081, null, View.class) : super.ig();
    }

    @Override // com.bytedance.msdk.d.s
    public String iw() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? (String) bridge.call(8147, null, String.class) : super.iw();
    }

    @Override // com.bytedance.msdk.d.s
    public void jy() {
        Bridge bridge = ((p) this).dq;
        if (bridge != null) {
            bridge.call(8191, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        Bridge bridge = ((p) this).dq;
        if (bridge == null || bridge.values() == null || ((p) this).dq.values().keys() == null || !((p) this).dq.values().keys().contains(8121)) {
            return super.kx();
        }
        MediationConstant.AdIsReadyStatus adIsReadyStatus = (MediationConstant.AdIsReadyStatus) ((p) this).dq.call(8121, null, MediationConstant.AdIsReadyStatus.class);
        return adIsReadyStatus == null ? super.kx() : adIsReadyStatus;
    }

    @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
    public Bitmap le() {
        if (TextUtils.equals(wi(), MediationConstant.ADN_GDT) && com.bytedance.msdk.core.dq.dq.dq.dq(MediationConstant.ADN_GDT)) {
            return r.p(com.bytedance.msdk.core.dq.getContext(), "tt_adapter_gdt_logo");
        }
        if (TextUtils.equals(wi(), MediationConstant.ADN_KS) && com.bytedance.msdk.core.dq.dq.dq.dq(MediationConstant.ADN_KS)) {
            return r.p(com.bytedance.msdk.core.dq.getContext(), "tt_adapter_ks_logo");
        }
        if (TextUtils.equals(wi(), MediationConstant.ADN_BAIDU) && com.bytedance.msdk.core.dq.dq.dq.dq(MediationConstant.ADN_BAIDU)) {
            return r.p(com.bytedance.msdk.core.dq.getContext(), "tt_adapter_baidu_logo");
        }
        Bridge bridge = ((p) this).dq;
        return bridge != null ? (Bitmap) bridge.call(8267, null, Bitmap.class) : super.le();
    }

    @Override // com.bytedance.msdk.d.s
    public String mp() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? (String) bridge.call(8163, null, String.class) : super.mp();
    }

    @Override // com.bytedance.msdk.d.s
    public void no() {
        super.no();
        Bridge bridge = ((p) this).dq;
        if (bridge != null) {
            bridge.call(6083, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean o() {
        try {
            Bridge bridge = ((p) this).dq;
            if (bridge != null) {
                return ((Boolean) bridge.call(8135, null, Boolean.class)).booleanValue();
            }
        } catch (Exception unused) {
        }
        return super.o();
    }

    @Override // com.bytedance.msdk.d.s
    public int ox() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? ((Integer) bridge.call(8162, null, Integer.class)).intValue() : super.d();
    }

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.msdk.api.p.dq.mn.iw q() {
        Bridge bridge;
        Bridge bridge2 = ((p) this).dq;
        if (bridge2 == null || (bridge = (Bridge) bridge2.call(8320, null, Bridge.class)) == null) {
            return null;
        }
        return com.bytedance.msdk.core.dq.iw.dq(bridge);
    }

    @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
    public double r() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? ((Double) bridge.call(8268, null, Double.class)).doubleValue() : super.r();
    }
}
