package com.bytedance.sdk.gromore.dq.dq.s;

import android.app.Activity;
import android.os.Bundle;
import com.bytedance.msdk.core.admanager.o;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.f.d.d.f;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class d extends f {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq f2357d;
    private o dq;
    private com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq ox;

    public d(o oVar) {
        this.dq = oVar;
        iw();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.msdk.api.ox.dq dqVar, com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar2, String str) {
        String str2;
        mn.dq(dqVar, str);
        if (dqVar2 == null || dqVar == null) {
            return;
        }
        boolean dq = dqVar.dq();
        float d2 = dqVar.d();
        String ox = dqVar.ox();
        Map<String, Object> p = dqVar.p();
        if (p == null) {
            p = new HashMap<>();
        }
        Object obj = p.get(MediationConstant.KEY_REWARD_TYPE);
        int i = 0;
        int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        Object obj2 = p.get(MediationConstant.KEY_EXTRA_INFO);
        Bundle bundle = obj2 instanceof Bundle ? (Bundle) obj2 : new Bundle();
        bundle.putString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME, ox);
        bundle.putFloat(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT, d2);
        Object obj3 = p.get(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY);
        if (obj3 instanceof Boolean) {
            bundle.putBoolean(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, ((Boolean) obj3).booleanValue());
        }
        Object obj4 = p.get(MediationConstant.KEY_TRANS_ID);
        if (obj4 instanceof String) {
            bundle.putString(MediationConstant.KEY_TRANS_ID, (String) obj4);
        }
        Object obj5 = p.get(MediationConstant.KEY_REASON);
        if (obj5 instanceof Integer) {
            bundle.putInt(MediationConstant.KEY_REASON, ((Integer) obj5).intValue());
        }
        Object obj6 = p.get("gromoreExtra");
        if (obj6 instanceof String) {
            bundle.putString("gromoreExtra", (String) obj6);
        }
        Object obj7 = p.get(MediationConstant.KEY_ERROR_CODE);
        if (obj7 instanceof Integer) {
            Integer num = (Integer) obj7;
            i = num.intValue();
            bundle.putInt(MediationConstant.KEY_ERROR_CODE, num.intValue());
        }
        Object obj8 = p.get(MediationConstant.KEY_ERROR_MSG);
        if (obj8 instanceof String) {
            String str3 = (String) obj8;
            bundle.putString(MediationConstant.KEY_ERROR_MSG, str3);
            str2 = str3;
        } else {
            str2 = "";
        }
        Object obj9 = p.get(MediationConstant.KEY_ADN_NAME);
        if (obj9 instanceof String) {
            bundle.putString(MediationConstant.KEY_ADN_NAME, (String) obj9);
        }
        Object obj10 = p.get(MediationConstant.KEY_ECPM);
        if (obj10 instanceof String) {
            bundle.putString(MediationConstant.KEY_ECPM, (String) obj10);
        }
        dqVar2.dq(dq, intValue, bundle);
        if (com.bytedance.msdk.dq.ox.d.dq("6.4.0.0")) {
            dqVar2.dq(dq, (int) d2, ox != null ? ox : "", i, str2);
        }
    }

    private void iw() {
        o oVar = this.dq;
        if (oVar == null) {
            return;
        }
        oVar.dq(new com.bytedance.msdk.api.p.dq.ia.dq() { // from class: com.bytedance.sdk.gromore.dq.dq.s.d.1
            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void E_() {
                if (d.this.f2357d != null) {
                    d.this.f2357d.dq();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void c_(com.bytedance.msdk.api.dq dqVar) {
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                d dVar = d.this;
                dVar.dq(dqVar, dVar.f2357d, "CSJMRewardAd normal");
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void iw() {
                if (d.this.f2357d != null) {
                    d.this.f2357d.iw();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void s_() {
                if (d.this.f2357d != null) {
                    d.this.f2357d.d();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void t_() {
                if (d.this.f2357d != null) {
                    d.this.f2357d.ox();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void u_() {
                if (d.this.f2357d != null) {
                    d.this.f2357d.p();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void v_() {
                if (d.this.f2357d != null) {
                    d.this.f2357d.s();
                }
            }
        });
        this.dq.d(new com.bytedance.msdk.api.p.dq.ia.dq() { // from class: com.bytedance.sdk.gromore.dq.dq.s.d.2
            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void E_() {
                if (d.this.ox != null) {
                    d.this.ox.dq();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void c_(com.bytedance.msdk.api.dq dqVar) {
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                d dVar = d.this;
                dVar.dq(dqVar, dVar.ox, "CSJMRewardAd play again");
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void iw() {
                if (d.this.ox != null) {
                    d.this.ox.iw();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void s_() {
                if (d.this.ox != null) {
                    d.this.ox.d();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void t_() {
                if (d.this.ox != null) {
                    d.this.ox.ox();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void u_() {
                if (d.this.ox != null) {
                    d.this.ox.p();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void v_() {
                if (d.this.ox != null) {
                    d.this.ox.s();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public Map<String, Object> d() {
        o oVar = this.dq;
        if (oVar != null) {
            return oVar.xi();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void d(com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar) {
        this.ox = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public int dq() {
        o oVar = this.dq;
        if (oVar != null) {
            return oVar.z();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(Activity activity) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(activity, ritScenes, str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(final com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.s.d.3
                @Override // com.bytedance.msdk.api.p.dq.d
                public void d(long j, long j2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.ox(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq() {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, int i, int i2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.d(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(j, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(str, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(com.bytedance.sdk.openadsdk.kx.dq.d.dq.d dVar) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.dq(dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar) {
        this.f2357d = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(boolean z) {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.d(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public int ox() {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public long p() {
        return Long.MAX_VALUE;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.iw s() {
        return new dq(new ox(this.dq));
    }
}
