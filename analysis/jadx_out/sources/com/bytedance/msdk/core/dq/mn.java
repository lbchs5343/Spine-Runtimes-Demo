package com.bytedance.msdk.core.dq;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class mn extends d {
    public mn(com.bytedance.msdk.dq.dq dqVar) {
        super(dqVar);
    }

    private com.bytedance.msdk.api.p.dq.ia.dq dn() {
        return (com.bytedance.msdk.api.p.dq.ia.dq) this.mp;
    }

    private com.bytedance.msdk.api.p.dq.ia.dq kf() {
        return (com.bytedance.msdk.api.p.dq.ia.dq) this.ig;
    }

    @Override // com.bytedance.msdk.core.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        String str;
        if (i == 8115) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                kf().s_();
            }
        } else if (i == 8116) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                kf().t_();
            }
        } else if (i == 8117) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                kf().v_();
            }
        } else if (i == 8118) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                kf().u_();
            }
        } else if (i == 8119) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                kf().iw();
            }
        } else {
            if (i != 8230) {
                if (i == 8231) {
                    if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        final boolean booleanValue = valueSet.booleanValue(8017);
                        final float intValue = valueSet.intValue(8018);
                        final String stringValue = valueSet.stringValue(8019);
                        Map map = (Map) valueSet.objectValue(8020, Map.class);
                        final HashMap hashMap = new HashMap();
                        if (map != null) {
                            hashMap.putAll(map);
                        }
                        com.bytedance.msdk.api.ox.dq dqVar = new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.dq.mn.1
                            @Override // com.bytedance.msdk.api.ox.dq
                            public float d() {
                                return intValue;
                            }

                            @Override // com.bytedance.msdk.api.ox.dq
                            public boolean dq() {
                                return booleanValue;
                            }

                            @Override // com.bytedance.msdk.api.ox.dq
                            public String ox() {
                                return stringValue;
                            }

                            @Override // com.bytedance.msdk.api.ox.dq
                            public Map<String, Object> p() {
                                return hashMap;
                            }
                        };
                        com.bytedance.sdk.gromore.dq.dq.s.mn.dq(dqVar, "GMRewardAd reward verify");
                        kf().dq(dqVar);
                    }
                } else if (i == 1017) {
                    if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        int i2 = 0;
                        if (valueSet != null) {
                            i2 = valueSet.intValue(8014, 0);
                            str = valueSet.stringValue(8015);
                        } else {
                            str = "";
                        }
                        kf().c_(new com.bytedance.msdk.api.dq(i2, str));
                    }
                } else if (i == 8232) {
                    if (this.mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        dn().s_();
                    }
                } else if (i == 8233) {
                    if (this.mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        dn().t_();
                    }
                } else if (i == 8234) {
                    if (this.mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        dn().v_();
                    }
                } else if (i == 8235) {
                    if (this.mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        dn().u_();
                    }
                } else if (i == 8236) {
                    if (this.mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        dn().iw();
                    }
                } else if (i == 8237) {
                    if (this.mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        dn().E_();
                    }
                } else if (i == 8238) {
                    if (this.mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                        final boolean booleanValue2 = valueSet.booleanValue(8017);
                        final float intValue2 = valueSet.intValue(8018);
                        final String stringValue2 = valueSet.stringValue(8019);
                        Map map2 = (Map) valueSet.objectValue(8020, Map.class);
                        final HashMap hashMap2 = new HashMap();
                        if (map2 != null) {
                            hashMap2.putAll(map2);
                        }
                        com.bytedance.msdk.api.ox.dq dqVar2 = new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.dq.mn.2
                            @Override // com.bytedance.msdk.api.ox.dq
                            public float d() {
                                return intValue2;
                            }

                            @Override // com.bytedance.msdk.api.ox.dq
                            public boolean dq() {
                                return booleanValue2;
                            }

                            @Override // com.bytedance.msdk.api.ox.dq
                            public String ox() {
                                return stringValue2;
                            }

                            @Override // com.bytedance.msdk.api.ox.dq
                            public Map<String, Object> p() {
                                return hashMap2;
                            }
                        };
                        com.bytedance.sdk.gromore.dq.dq.s.mn.dq(dqVar2, "GMRewardAd play again reward verify");
                        dn().dq(dqVar2);
                    }
                } else if (i == 8111) {
                    dq(valueSet.doubleValue(8016));
                }
                return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
            }
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                kf().E_();
            }
        }
        return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(activity, ritScenes, str);
        if (((d) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            ((d) this).dq.call(8113, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean e() {
        Boolean bool;
        Bridge bridge = ((d) this).dq;
        if (bridge != null && (bool = (Boolean) bridge.call(8211, null, Boolean.class)) != null) {
            return bool.booleanValue();
        }
        return super.e();
    }

    @Override // com.bytedance.msdk.d.s
    public String iw() {
        Bridge bridge = ((d) this).dq;
        return bridge != null ? (String) bridge.call(8147, null, String.class) : super.iw();
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        MediationConstant.AdIsReadyStatus adIsReadyStatus;
        Bridge bridge = ((d) this).dq;
        return (bridge == null || (adIsReadyStatus = (MediationConstant.AdIsReadyStatus) bridge.call(8121, null, MediationConstant.AdIsReadyStatus.class)) == null) ? super.kx() : adIsReadyStatus;
    }
}
