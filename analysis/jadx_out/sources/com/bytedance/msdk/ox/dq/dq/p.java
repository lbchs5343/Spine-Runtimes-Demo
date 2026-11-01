package com.bytedance.msdk.ox.dq.dq;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import g.hat;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class p extends ia implements Bridge {
    public p(com.bytedance.msdk.ox.ox.d.dq.dq.d dVar, Bridge bridge) {
        super(dVar, bridge);
        if (bridge != null) {
            hat f2 = hat.f();
            f2.m(8034, this);
            bridge.call(8127, f2.k(), Void.class);
            ix();
        }
    }

    private void ix() {
        ValueSet values = ((ox) this).f1125d.values();
        if (values != null) {
            Map<String, Object> map = (Map) values.objectValue(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, Map.class);
            String stringValue = values.stringValue(8045);
            String stringValue2 = values.stringValue(8046);
            String stringValue3 = values.stringValue(8048);
            String stringValue4 = values.stringValue(8049);
            String stringValue5 = values.stringValue(8050);
            int intValue = values.intValue(8051);
            int intValue2 = values.intValue(8052);
            List<String> list = (List) values.objectValue(8053, List.class);
            String stringValue6 = values.stringValue(8054);
            double doubleValue = values.doubleValue(8016);
            boolean booleanValue = values.booleanValue(8033);
            int intValue3 = values.intValue(8060);
            String stringValue7 = values.stringValue(8061);
            double doubleValue2 = values.doubleValue(8082);
            int intValue4 = values.intValue(8420);
            int intValue5 = values.intValue(8421);
            int intValue6 = values.intValue(8059);
            Bridge bridge = (Bridge) values.objectValue(8315, Bridge.class);
            if (doubleValue > 0.0d) {
                dq(doubleValue);
            }
            ox(map);
            n(stringValue);
            op(stringValue2);
            kx(stringValue3);
            h(stringValue5);
            gh(intValue2);
            r(intValue);
            ji(stringValue7);
            bl(stringValue6);
            le(intValue4);
            k(intValue5);
            p(doubleValue2);
            dq(list);
            ir(stringValue4);
            mn(booleanValue);
            ig(intValue3);
            mp(intValue6);
            if (bridge != null) {
                com.bytedance.msdk.dq.p.dq.p.p pVar = new com.bytedance.msdk.dq.p.dq.p.p(bridge);
                i(pVar.ox());
                le(pVar.p());
                d(pVar.s());
                k(pVar.iw());
                wp(pVar.ia());
                e(pVar.kk());
                s(pVar.mn());
            }
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8134) {
            int intValue = valueSet.intValue(8014);
            String stringValue = valueSet.stringValue(8015);
            View view = (View) valueSet.objectValue(8042, View.class);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeRenderFail code:" + intValue + " msg:" + stringValue + " view" + view);
            dq(view, stringValue, intValue);
        } else if (i == 8133) {
            float floatValue = valueSet.floatValue(8040);
            float floatValue2 = valueSet.floatValue(8041);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeRenderSuccess width:" + floatValue + " height:" + floatValue2);
            dq(floatValue, floatValue2);
        } else if (i == 8130) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeAdClick");
            u();
        } else if (i == 8113) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeAdShow");
            kf();
        } else if (i == 8145) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeVideoStart");
            dn();
        } else if (i == 8146) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeVideoPause");
            kr();
        } else if (i == 8150) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeVideoResume");
            el();
        } else if (i == 8118) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeVideoCompleted");
            fa();
        } else if (i == 8117) {
            int intValue2 = valueSet.intValue(8014);
            String stringValue2 = valueSet.stringValue(8015);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeVideoError code:" + intValue2 + " msg:" + stringValue2);
            dq(new com.bytedance.msdk.api.p.dq.d.dq(intValue2, stringValue2));
        } else if (i == 8154) {
            long longValue = valueSet.longValue(8072);
            long longValue2 = valueSet.longValue(8073);
            StringBuilder l = awf.l(longValue, "Adn custom draw ad : callNativeVideoError current:", " duration:");
            l.append(longValue2);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", l.toString());
            dq(longValue, longValue2);
        } else if (i == 8152) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeOnIdle");
            hg();
        } else if (i == 8187) {
            long longValue3 = valueSet.longValue(8062);
            long longValue4 = valueSet.longValue(8063);
            valueSet.intValue(8064);
            valueSet.intValue(8065);
            StringBuilder l2 = awf.l(longValue3, "Adn custom draw ad : callNativeOnDownloadActive totalBytes:", " curlBytes:");
            l2.append(longValue4);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", l2.toString());
            dq(longValue3, longValue4, "", "");
        } else if (i == 8158) {
            long longValue5 = valueSet.longValue(8062);
            long longValue6 = valueSet.longValue(8063);
            String stringValue3 = valueSet.stringValue(8066);
            String stringValue4 = valueSet.stringValue(8056);
            StringBuilder l3 = awf.l(longValue5, "Adn custom draw ad : callNativeOnDownloadPaused totalBytes:", " curlBytes:");
            l3.append(longValue6);
            l3.append(" fileName:");
            l3.append(stringValue3);
            l3.append(" appName:");
            l3.append(stringValue4);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", l3.toString());
            d(longValue5, longValue6, stringValue3, stringValue4);
        } else if (i == 8157) {
            long longValue7 = valueSet.longValue(8062);
            long longValue8 = valueSet.longValue(8063);
            String stringValue5 = valueSet.stringValue(8066);
            String stringValue6 = valueSet.stringValue(8056);
            StringBuilder l4 = awf.l(longValue7, "Adn custom draw ad : callNativeOnDownloadFailed totalBytes:", " curlBytes:");
            l4.append(longValue8);
            l4.append(" fileName:");
            l4.append(stringValue5);
            l4.append(" appName:");
            l4.append(stringValue6);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", l4.toString());
            ox(longValue7, longValue8, stringValue5, stringValue6);
        } else if (i == 8155) {
            long longValue9 = valueSet.longValue(8062);
            String stringValue7 = valueSet.stringValue(8066);
            String stringValue8 = valueSet.stringValue(8056);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeOnDownloadFinished totalBytes:" + longValue9 + " fileName:" + stringValue7 + " appName:" + stringValue8);
            dq(longValue9, stringValue7, stringValue8);
        } else if (i == 8156) {
            String stringValue9 = valueSet.stringValue(8066);
            String stringValue10 = valueSet.stringValue(8056);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeOnDownloadFinished  fileName:" + stringValue9 + " appName:" + stringValue10);
            dq(stringValue9, stringValue10);
        } else if (i == 8185) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeDislikeShow");
            uo();
        } else if (i == 8184) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeDislikeCancel");
            gv();
        } else if (i != 6085) {
            if (i == 8110) {
                boolean xx = xx();
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : isClientBiddingAd :".concat(String.valueOf(xx)));
                return (T) Boolean.valueOf(xx);
            }
            if (i == 8136) {
                boolean ip = ip();
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : isServerBiddingAd :".concat(String.valueOf(ip)));
                return (T) Boolean.valueOf(ip);
            }
            if (i == 8160) {
                boolean yy = yy();
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : isUseCustomVideo :".concat(String.valueOf(yy)));
                return (T) Boolean.valueOf(yy);
            }
            if (i == 8226) {
                int y = y();
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : getBiddingType :".concat(String.valueOf(y)));
                return (T) Integer.valueOf(y);
            }
            if (i == 8132) {
                int intValue3 = valueSet.intValue(8038);
                String stringValue11 = valueSet.stringValue(8039);
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw ad : callNativeDislikeSelected postion:" + intValue3 + " value:" + stringValue11);
                dq(intValue3, stringValue11);
            }
        }
        return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
    }

    @Override // com.bytedance.msdk.ox.dq.dq.ox, com.bytedance.msdk.d.s
    public void ce() {
        Bridge bridge = ((ox) this).f1125d;
        if (bridge != null) {
            bridge.call(8149, null, Void.class);
        }
    }

    public void d(long j, long j2, String str, String str2) {
        if (ir() != null) {
            ir().dq(j, j2, str, str2);
        }
    }

    public void dn() {
        if (op() != null) {
            op().uh();
        }
    }

    @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        if (((ox) this).f1125d == null) {
            return null;
        }
        hat f2 = hat.f();
        f2.m(20033, activity);
        Bridge bridge = (Bridge) ((ox) this).f1125d.call(6072, f2.k(), Bridge.class);
        if (bridge == null) {
            return null;
        }
        final com.bytedance.sdk.openadsdk.mediation.dq.d.iw iwVar = new com.bytedance.sdk.openadsdk.mediation.dq.d.iw(bridge);
        return new com.bytedance.sdk.openadsdk.f.d.d.ia() { // from class: com.bytedance.msdk.ox.dq.dq.p.1
            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void dq() {
                iwVar.dq();
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void dq(com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
                iwVar.dq(new com.bytedance.msdk.dq.p.dq.p.s(dqVar));
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public void dq(String str) {
            }

            @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
            public boolean ox() {
                return false;
            }
        };
    }

    public void dq(float f2, float f3) {
        if (c() instanceof com.bytedance.msdk.api.p.dq.ox.s) {
            try {
                ((com.bytedance.msdk.api.p.dq.ox.s) c()).dq(f2, f3);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void dq(int i, String str) {
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = ((ox) this).dq;
        if (dVar != null) {
            dVar.dq(this, str);
        }
        if (wn() != null) {
            wn().dq(i, str, false);
        }
    }

    public void dq(long j, long j2) {
        if (op() != null) {
            op().dq(j, j2);
        }
    }

    public void dq(long j, long j2, String str, String str2) {
        if (ir() != null) {
            ir().dq(j, j2, -1, 1, str, str2);
        }
    }

    public void dq(long j, String str, String str2) {
        if (ir() != null) {
            ir().dq(j, str, str2);
        }
    }

    @Override // com.bytedance.msdk.ox.dq.dq.ia
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar) {
        if (((ox) this).f1125d != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            f2.m(8067, viewGroup);
            f2.m(8068, list);
            f2.m(8069, list2);
            f2.m(8070, list3);
            f2.m(8071, no.dq(noVar));
            ((ox) this).f1125d.call(8159, f2.k(), Void.class);
        }
    }

    public void dq(View view, String str, int i) {
        if (c() instanceof com.bytedance.msdk.api.p.dq.ox.s) {
            try {
                ((com.bytedance.msdk.api.p.dq.ox.s) c()).dq(view, str, i);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.d.dq dqVar) {
        if (op() != null) {
            op().dq(new com.bytedance.msdk.api.dq(49012, com.bytedance.msdk.api.dq.dq(49012), dqVar == null ? -1 : dqVar.dq(), dqVar == null ? "" : dqVar.d()));
        }
    }

    public void dq(String str, String str2) {
        if (ir() != null) {
            ir().dq(str, str2);
        }
    }

    @Override // com.bytedance.msdk.ox.dq.dq.ox
    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
        super.dq(z, d2, i, map);
        if (((ox) this).f1125d != null) {
            hat f2 = hat.f();
            f2.i(8406, z);
            f2.j(8407, d2);
            f2.o(8408, i);
            f2.m(8075, map);
            ((ox) this).f1125d.call(8225, f2.k(), Void.class);
        }
    }

    public void el() {
        if (op() != null) {
            op().yy();
        }
    }

    @Override // com.bytedance.msdk.ox.dq.dq.ox, com.bytedance.msdk.d.s
    public void er() {
        Bridge bridge = ((ox) this).f1125d;
        if (bridge != null) {
            bridge.call(8148, null, Void.class);
        }
    }

    public void fa() {
        if (op() != null) {
            op().v();
        }
    }

    public void gv() {
        if (wn() != null) {
            wn().d();
        }
    }

    public void hg() {
        if (ir() != null) {
            ir().dq();
        }
    }

    @Override // com.bytedance.msdk.d.s
    public View ig() {
        Bridge bridge = ((ox) this).f1125d;
        return bridge != null ? (View) bridge.call(6081, null, View.class) : super.ig();
    }

    public void kf() {
        d(new dq() { // from class: com.bytedance.msdk.ox.dq.dq.p.3
            @Override // com.bytedance.msdk.ox.dq.dq.dq
            public void dq() {
                if (p.this.c() != null) {
                    p.this.c().dq();
                }
            }
        });
    }

    public void kr() {
        if (op() != null) {
            op().xz();
        }
    }

    @Override // com.bytedance.msdk.ox.dq.dq.ox, com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        MediationConstant.AdIsReadyStatus adIsReadyStatus;
        Bridge bridge = ((ox) this).f1125d;
        return (bridge == null || (adIsReadyStatus = (MediationConstant.AdIsReadyStatus) bridge.call(8121, null, MediationConstant.AdIsReadyStatus.class)) == null) ? MediationConstant.AdIsReadyStatus.ADN_NO_READY_API : adIsReadyStatus;
    }

    @Override // com.bytedance.msdk.d.s
    public String mp() {
        Bridge bridge = ((ox) this).f1125d;
        return bridge != null ? (String) bridge.call(8228, null, String.class) : super.mp();
    }

    @Override // com.bytedance.msdk.d.s
    public boolean o() {
        Bridge bridge = ((ox) this).f1125d;
        return bridge != null ? ((Boolean) bridge.call(8135, null, Boolean.class)).booleanValue() : super.o();
    }

    public void ox(long j, long j2, String str, String str2) {
        if (ir() != null) {
            ir().d(j, j2, str, str2);
        }
    }

    @Override // com.bytedance.msdk.ox.dq.dq.ox, com.bytedance.msdk.d.s
    public void p() {
        Bridge bridge = ((ox) this).f1125d;
        if (bridge != null) {
            bridge.call(8109, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.msdk.api.p.dq.mn.iw q() {
        Bridge bridge;
        Bridge bridge2 = ((ox) this).f1125d;
        return (bridge2 == null || (bridge = (Bridge) bridge2.call(8320, null, Bridge.class)) == null) ? super.q() : com.bytedance.msdk.core.dq.iw.dq(bridge);
    }

    public void u() {
        dq(new dq() { // from class: com.bytedance.msdk.ox.dq.dq.p.2
            @Override // com.bytedance.msdk.ox.dq.dq.dq
            public void dq() {
                if (p.this.c() != null) {
                    p.this.c().dq(null);
                }
            }
        });
    }

    public void uo() {
        if (wn() != null) {
            wn().dq();
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
