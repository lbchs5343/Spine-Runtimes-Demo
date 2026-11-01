package com.bytedance.sdk.gromore.init;

import android.app.Activity;
import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class o extends com.bytedance.sdk.openadsdk.mediation.dq.d.p {
    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public int dq(final com.bytedance.sdk.openadsdk.mediation.dq.d.dq.p pVar) {
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager showOpenOrInstallAppDialog");
        return com.bytedance.msdk.api.p.o.dq(new com.bytedance.msdk.api.p.ox() { // from class: com.bytedance.sdk.gromore.init.o.1
            @Override // com.bytedance.msdk.api.p.ox
            public void dq(int i) {
                com.bytedance.sdk.openadsdk.mediation.dq.d.dq.p pVar2 = pVar;
                if (pVar2 != null) {
                    pVar2.dq(i);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public Object dq(int i, ValueSet valueSet) {
        String str;
        String str2;
        if (i == 8259) {
            return dq();
        }
        if (i == 1001) {
            return Boolean.valueOf(com.bytedance.msdk.api.p.o.dq());
        }
        if (i == 1002) {
            return Boolean.valueOf(com.bytedance.msdk.api.p.o.dq(valueSet.stringValue(1001), valueSet.stringValue(1002)));
        }
        if (i == 1003) {
            return Boolean.valueOf(com.bytedance.msdk.api.p.o.d(valueSet.stringValue(1001), valueSet.stringValue(1003)));
        }
        if (i == 1004) {
            return com.bytedance.msdk.api.p.o.s();
        }
        if (i == 1005) {
            return com.bytedance.msdk.api.p.o.no();
        }
        if (i == 1006) {
            return com.bytedance.msdk.api.p.o.o();
        }
        if (i == 1007) {
            return com.bytedance.msdk.api.p.o.d((Context) valueSet.objectValue(1004, Context.class));
        }
        if (i == 1008) {
            com.bytedance.msdk.api.p.o.d(2);
        } else if (i == 1009) {
            com.bytedance.msdk.api.p.o.ig();
        } else {
            if (i == 1010) {
                return Boolean.valueOf(com.bytedance.msdk.api.p.o.p(valueSet.stringValue(1001)));
            }
            if (i == 1011) {
                String stringValue = valueSet.stringValue(1001);
                com.bytedance.msdk.api.p.dq.d.iw.dq s = com.bytedance.msdk.api.p.o.s(stringValue);
                com.bytedance.msdk.dq.dq.p iw = com.bytedance.msdk.api.p.o.iw(stringValue);
                if (s != null) {
                    str = s.dq();
                    str2 = s.d();
                } else if (iw != null) {
                    String d2 = iw.d();
                    str2 = iw.dq();
                    str = d2;
                } else {
                    str = "";
                    str2 = "";
                }
                HashMap hashMap = new HashMap(2);
                hashMap.put("networdSdkVersion", str);
                hashMap.put("adapterSdkVersion", str2);
                return hashMap;
            }
            if (i == 2001) {
                if (valueSet == null) {
                    return null;
                }
                com.bytedance.sdk.gromore.d.dq.dq((Bridge) valueSet.objectValue(2002, Bridge.class));
                return com.bytedance.sdk.gromore.d.dq.dq();
            }
            if (i == 1012) {
                return Boolean.valueOf(com.bytedance.msdk.core.d.no().bl().ox());
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public Map<String, Object> dq() {
        com.bytedance.msdk.dq.s.ox.d("TMe", "getMediationExtraInfo");
        return com.bytedance.msdk.api.p.o.mp();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(int i) {
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager setThemeStatus themeStatus = ".concat(String.valueOf(i)));
        com.bytedance.msdk.api.p.o.dq(i);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(Activity activity, List<com.bytedance.sdk.openadsdk.mediation.dq.d.s> list, int i, int i2, Bridge bridge) {
        com.bytedance.msdk.api.dq.d dq;
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager preload activity = " + activity + " list = " + list + " parallelNum = " + i + " requestIntervalS = " + i2 + " classLoader = " + bridge);
        if (list == null || list.size() == 0) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "参数错误");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.openadsdk.mediation.dq.d.s sVar : list) {
            if (sVar != null && (dq = com.bytedance.msdk.api.p.dq.dq.dq(sVar.dq(), sVar.d(), bridge)) != null) {
                arrayList.add(new com.bytedance.msdk.api.p.mp(dq, sVar.ox()));
            }
        }
        if (arrayList.size() > 0) {
            com.bytedance.msdk.api.p.o.dq(activity, arrayList, i, i2);
        } else {
            com.bytedance.msdk.dq.s.ox.p("TMe", "参数错误");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(Context context) {
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager requestPermissionIfNecessary context = ".concat(String.valueOf(context)));
        com.bytedance.msdk.api.p.o.dq(context);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, final com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq dqVar2, Bridge bridge) {
        if (context == null || dqVar == null) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "参数错误");
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager loadDrawToken context = " + context + " adSlot = " + dqVar + " pluginIMediationDrawAdTokenCallback = " + dqVar2 + " classLoader = " + bridge);
        com.bytedance.msdk.api.dq.d dq = com.bytedance.msdk.api.p.dq.dq.dq(9, dqVar, bridge);
        if (dq != null) {
            if (com.bytedance.msdk.ox.mn.d.dq()) {
                final com.bytedance.msdk.ox.p.mn mnVar = new com.bytedance.msdk.ox.p.mn(context);
                mnVar.dq(dq, new com.bytedance.msdk.api.p.dq.ox() { // from class: com.bytedance.sdk.gromore.init.o.4
                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(com.bytedance.msdk.api.dq dqVar3) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq dqVar4;
                        if (dqVar3 == null || (dqVar4 = dqVar2) == null) {
                            return;
                        }
                        dqVar4.dq(dqVar3.dq, dqVar3.f756d);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(String str) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq dqVar3 = dqVar2;
                        if (dqVar3 != null) {
                            dqVar3.dq(str, new com.bytedance.sdk.gromore.dq.dq.mn.d.p(mnVar));
                        }
                    }
                });
            } else {
                final com.bytedance.msdk.core.admanager.s sVar = new com.bytedance.msdk.core.admanager.s(context, dqVar.mn());
                sVar.dq(dq, new com.bytedance.msdk.api.p.dq.ox() { // from class: com.bytedance.sdk.gromore.init.o.5
                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(com.bytedance.msdk.api.dq dqVar3) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq dqVar4;
                        if (dqVar3 == null || (dqVar4 = dqVar2) == null) {
                            return;
                        }
                        dqVar4.dq(dqVar3.dq, dqVar3.f756d);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(String str) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq dqVar3 = dqVar2;
                        if (dqVar3 != null) {
                            dqVar3.dq(str, new kk(sVar));
                        }
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, final com.bytedance.sdk.openadsdk.mediation.dq.d.dq.ox oxVar, Bridge bridge) {
        if (context == null || dqVar == null) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "参数错误");
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager loadNativeToken context = " + context + " adSlot = " + dqVar + " pluginIMediationNativeAdTokenCallback = " + oxVar + " classLoader = " + bridge);
        com.bytedance.msdk.api.dq.d dq = com.bytedance.msdk.api.p.dq.dq.dq(5, dqVar, bridge);
        if (dq != null) {
            if (com.bytedance.msdk.ox.mn.d.dq()) {
                final com.bytedance.msdk.ox.p.kk kkVar = new com.bytedance.msdk.ox.p.kk(context);
                kkVar.dq(dq, new com.bytedance.msdk.api.p.dq.ox() { // from class: com.bytedance.sdk.gromore.init.o.2
                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(com.bytedance.msdk.api.dq dqVar2) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.ox oxVar2;
                        if (dqVar2 == null || (oxVar2 = oxVar) == null) {
                            return;
                        }
                        oxVar2.dq(dqVar2.dq, dqVar2.f756d);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(String str) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.ox oxVar2 = oxVar;
                        if (oxVar2 != null) {
                            oxVar2.dq(str, new com.bytedance.sdk.gromore.dq.dq.mn.p.dq(kkVar));
                        }
                    }
                });
            } else {
                final com.bytedance.msdk.core.admanager.ia iaVar = new com.bytedance.msdk.core.admanager.ia(context, dqVar.mn());
                iaVar.dq(dq, new com.bytedance.msdk.api.p.dq.ox() { // from class: com.bytedance.sdk.gromore.init.o.3
                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(com.bytedance.msdk.api.dq dqVar2) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.ox oxVar2;
                        if (dqVar2 == null || (oxVar2 = oxVar) == null) {
                            return;
                        }
                        oxVar2.dq(dqVar2.dq, dqVar2.f756d);
                    }

                    @Override // com.bytedance.msdk.api.p.dq.ox
                    public void dq(String str) {
                        com.bytedance.sdk.openadsdk.mediation.dq.d.dq.ox oxVar2 = oxVar;
                        if (oxVar2 != null) {
                            oxVar2.dq(str, new no(iaVar));
                        }
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(Context context, int[] iArr) {
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager requestPermissionIfNecessary context = " + context + " permissions = " + iArr);
        com.bytedance.msdk.api.p.o.dq(context, iArr);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar) {
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager updatePrivacyConfig customController = ".concat(String.valueOf(pVar)));
        com.bytedance.msdk.api.p.o.dq(pVar);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar) {
        com.bytedance.msdk.api.p.o.dq(d.dq(oxVar));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(String str) {
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager setPulisherDid configUserInfoForSegment = ".concat(String.valueOf(str)));
        com.bytedance.msdk.api.p.o.dq(str);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.p
    public void dq(Map<String, Object> map) {
        com.bytedance.msdk.dq.s.ox.d("TMe", "mediationManager updateLocalExtra map = ".concat(String.valueOf(map)) == null ? "null" : map.toString());
        com.bytedance.msdk.core.d.no().d(map);
    }
}
