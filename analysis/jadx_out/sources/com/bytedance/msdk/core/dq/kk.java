package com.bytedance.msdk.core.dq;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.no.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class kk extends com.bytedance.msdk.dq.dq {
    private String iw;
    private dq mn;

    public static class dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private int f911d;
        private com.bytedance.msdk.dq.dq dq;
        private int ox;
        private Bridge p;

        public dq(int i, int i2, com.bytedance.msdk.dq.dq dqVar) {
            this.f911d = i;
            this.ox = i2;
            this.dq = dqVar;
        }

        public dq(com.bytedance.msdk.dq.dq dqVar) {
            this.dq = dqVar;
        }

        private com.bytedance.msdk.d.s dq() {
            switch (this.f911d) {
                case 1:
                    return new com.bytedance.msdk.core.dq.dq(this.dq);
                case 2:
                    return new p(this.dq);
                case 3:
                    return new ia(this.dq);
                case 4:
                case 6:
                default:
                    return null;
                case 5:
                    int i = this.ox;
                    if (i != 4 && i != 5 && i == 3) {
                        return new com.bytedance.msdk.core.dq.dq(this.dq);
                    }
                    return new s(this.dq);
                case 7:
                    int i2 = this.ox;
                    if (i2 != 6 && i2 == 7) {
                        return new ox(this.dq);
                    }
                    return new mn(this.dq);
                case 8:
                    return new ox(this.dq);
                case 9:
                    return new s(this.dq);
                case 10:
                    int i3 = this.ox;
                    if (i3 == 1) {
                        return new p(this.dq);
                    }
                    if (i3 == 2) {
                        return new ox(this.dq);
                    }
                    return null;
            }
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            if (i == 8108) {
                this.dq.dq(new com.bytedance.msdk.api.dq(valueSet.intValue(8014), valueSet.stringValue(8015)));
            } else if (i == 8112) {
                Object obj = (Bridge) valueSet.objectValue(8303, Bridge.class);
                int intValue = valueSet.intValue(8014);
                String stringValue = valueSet.stringValue(8015);
                if (obj instanceof com.bytedance.msdk.d.s) {
                    this.dq.dq((com.bytedance.msdk.d.s) obj, new com.bytedance.msdk.api.dq(intValue, stringValue));
                }
            } else if (i == 8107) {
                List list = (List) valueSet.objectValue(8303, List.class);
                if (list.size() <= 0 || (list.get(0) instanceof s)) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list) {
                        if (obj2 instanceof com.bytedance.msdk.d.s) {
                            arrayList.add((com.bytedance.msdk.d.s) obj2);
                        }
                    }
                    this.dq.d(arrayList);
                } else if (list.get(0) instanceof com.bytedance.msdk.d.s) {
                    this.dq.dq((com.bytedance.msdk.d.s) list.get(0));
                }
            } else {
                if (i == 8127) {
                    return (T) dq();
                }
                if (i == 8110) {
                    return (T) Boolean.valueOf(this.dq.iw());
                }
                if (i == 8136) {
                    return (T) Boolean.valueOf(this.dq.s());
                }
                if (i == 8141) {
                    return (T) Boolean.valueOf(this.dq.mn());
                }
                if (i == 8137) {
                    return (T) this.dq.kk();
                }
                if (i == 8226) {
                    return (T) Integer.valueOf(this.dq.ia());
                }
                if (i == 8138) {
                    this.p = (Bridge) valueSet.objectValue(8043, Bridge.class);
                } else {
                    if (i == 8210) {
                        return (T) Boolean.valueOf(this.dq.jy());
                    }
                    if (i == 20000) {
                        Bridge bridge = (Bridge) valueSet.objectValue(10010, Bridge.class);
                        String str = (String) valueSet.objectValue(10011, String.class);
                        Context context = (Context) valueSet.objectValue(10000, Context.class);
                        com.bytedance.msdk.api.dq.d dq = this.dq.dq();
                        no d2 = this.dq.d();
                        if (bridge == null || TextUtils.isEmpty(str) || dq == null || d2 == null) {
                            com.bytedance.msdk.core.dq.dq.dq.d(dq);
                        } else {
                            com.bytedance.msdk.core.dq.dq.dq.dq d3 = com.bytedance.msdk.core.dq.dq.dq.d(str, this.f911d, this.ox);
                            if (d3 != null) {
                                com.bytedance.msdk.core.dq.dq.dq.dq(dq);
                                d3.dq(context, bridge, dq, d2, new com.bytedance.msdk.core.dq.dq.dq.d() { // from class: com.bytedance.msdk.core.dq.kk.dq.1
                                    @Override // com.bytedance.msdk.core.dq.dq.dq.d
                                    public void dq(int i2, String str2) {
                                        if (dq.this.dq != null) {
                                            dq.this.dq.dq(new com.bytedance.msdk.api.dq(i2, str2));
                                        }
                                    }

                                    @Override // com.bytedance.msdk.core.dq.dq.dq.d
                                    public void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq dqVar) {
                                        if (dq.this.dq != null) {
                                            dq.this.dq.dq(sVar, dqVar);
                                        }
                                    }

                                    @Override // com.bytedance.msdk.core.dq.dq.dq.d
                                    public void dq(List<com.bytedance.msdk.d.s> list2) {
                                        if (dq.this.dq != null) {
                                            dq.this.dq.d(list2);
                                        }
                                    }
                                });
                            } else {
                                com.bytedance.msdk.core.dq.dq.dq.d(dq);
                            }
                        }
                    }
                }
            }
            return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
        }

        public String dq(Context context, String str, Object obj) {
            if (this.p == null) {
                return null;
            }
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
            f2.n(AVMDLDataLoader.KeyIsLiveCacheThresholdP2pToHttp, str);
            f2.m(8044, obj);
            return (String) this.p.call(8139, f2.k(), String.class);
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge
        public ValueSet values() {
            return null;
        }
    }

    public kk(String str) {
        this.iw = str;
    }

    private void d(Context context, hat hatVar) {
        Bridge mn = com.bytedance.msdk.core.mp.dq.dq().mn();
        if (mn == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "load ad class loader is null ");
            return;
        }
        if (com.bytedance.sdk.gromore.init.dq.dq() < 5900) {
            hatVar.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
            mn.call(8106, hatVar.k(), Void.class);
        } else {
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
            f2.m(8424, hatVar.k());
            mn.call(8106, f2.k(), Void.class);
        }
    }

    public static hat dq(Context context, com.bytedance.msdk.dq.dq dqVar, Map<String, Object> map, String str) {
        Double valueOf = Double.valueOf(-1.0d);
        HashMap hashMap = null;
        if (dqVar == null || dqVar.dq() == null || dqVar.dq().i() == null) {
            return null;
        }
        hat f2 = hat.f();
        SparseArray sparseArray = f2.f19148c;
        com.bytedance.msdk.api.dq.d dq2 = dqVar.dq();
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq i = dq2.i();
        hat e2 = hat.e(dq2.j());
        e2.f19148c.put(15, i.fw());
        e2.o(13, dq2.h());
        e2.o(7, i.kk());
        e2.o(8, i.o());
        e2.o(16, i.cd());
        e2.o(20, i.i());
        e2.i(11, i.mp());
        e2.o(17, dq2.fw());
        hat f3 = hat.f();
        HashMap hashMap2 = new HashMap();
        if (i.dq() != null) {
            if (i.dq().iw() != null) {
                hashMap2.putAll(i.dq().iw());
            }
            if (dqVar.d() != null) {
                hashMap2.put("waterfall_config", dqVar.d());
            }
            hashMap2.put("dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().iw()));
            hashMap2.put("wf_dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().mn()));
            com.bytedance.msdk.core.p.dq.dq(dqVar.dq(), dqVar.d(), hashMap2);
            f3.i(8444, i.dq().ox());
            f3.i(8445, i.dq().dq());
            f3.i(8446, i.dq().d());
            f3.l(8447, i.dq().p());
            f3.i(8448, i.dq().s());
            f3.i(8450, i.dq().mn());
            f3.f19148c.put(8451, i.dq().ia());
            f3.i(8454, i.dq().kk());
            f3.l(8455, i.dq().no());
            f3.l(8456, i.dq().ig());
        } else {
            hashMap2.put("dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().iw()));
            hashMap2.put("wf_dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().mn()));
        }
        com.bytedance.msdk.api.p.kk d2 = com.bytedance.msdk.core.d.no().bl().d();
        if (d2 != null) {
            hashMap2.put("lng", Double.valueOf(d2.d()));
            hashMap2.put("lat", Double.valueOf(d2.dq()));
            hashMap2.put("loc_time", Long.valueOf(System.currentTimeMillis() / 1000));
        } else {
            hashMap2.put("lng", valueOf);
            hashMap2.put("lat", valueOf);
            hashMap2.put("loc_time", -1);
        }
        hashMap2.put("load_type", com.bytedance.msdk.core.dq.dq.dq.dq());
        hashMap2.put("load_can_log", Boolean.valueOf(com.bytedance.msdk.mn.dq.dq.jy().no()));
        f3.m(8449, hashMap2);
        f3.m(8044, hashMap2);
        dq(f3, i);
        e2.m(8443, f3.k());
        hat e3 = hat.e(dq2.j());
        e3.f19148c.put(8089, e2.k());
        f2.m(8090, e3.k());
        f2.n(AVMDLDataLoader.KeyIsLiveCacheThresholdP2pToHttp, dqVar.no());
        f2.n(4, dqVar.ig());
        f2.n(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec, dqVar.fw());
        f2.o(17, dq2.fw());
        if (dq2.wn() != null) {
            HashMap hashMap3 = new HashMap();
            for (Map.Entry<String, Object> entry : dq2.wn().entrySet()) {
                Object value = entry.getValue();
                hashMap3.put(entry.getKey(), value == null ? null : value.toString());
            }
            hashMap = hashMap3;
        }
        if (hashMap != null) {
            f2.m(8013, hashMap);
        }
        if (map != null) {
            f2.o(8096, map.get("ad_load_timeout") != null ? ((Integer) map.get("ad_load_timeout")).intValue() : 3000);
        }
        Object obj = map.get("contentUrl");
        if (obj instanceof String) {
            f2.n(8083, (String) obj);
        }
        Object obj2 = map.get("testDevices");
        if (obj2 instanceof String) {
            f2.n(8084, (String) obj2);
        }
        Object obj3 = map.get("tt_ad_origin_type");
        if (obj3 != null) {
            Integer num = (Integer) obj3;
            int intValue = num.intValue();
            if (intValue == 1 || intValue == 3) {
                f2.i(8033, true);
            }
            sparseArray.put(8085, num);
        }
        Object obj4 = map.get("tt_ad_sub_type");
        if (obj4 != null) {
            sparseArray.put(8094, (Integer) obj4);
        }
        Object obj5 = map.get("render_control");
        if (obj5 instanceof Integer) {
            Integer num2 = (Integer) obj5;
            num2.getClass();
            sparseArray.put(8553, num2);
        }
        return f2;
    }

    private void dq(Context context, hat hatVar) {
        Bridge dq2 = com.bytedance.msdk.core.dq.dq.dq.dq(ox(), this.ox.le(), mp());
        if (dq2 == null) {
            d(context, hatVar);
            return;
        }
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
        f2.m(8424, hatVar.k());
        dq2.call(8241, f2.k(), Void.class);
    }

    private static void dq(hat hatVar, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar) {
        if (hatVar == null || dqVar == null) {
            return;
        }
        if (dqVar.dq() != null && !TextUtils.isEmpty(dqVar.dq().q()) && dqVar.dq().jy() != 0) {
            hatVar.n(8452, dqVar.dq().q());
            hatVar.o(8453, dqVar.dq().jy());
        } else {
            if (TextUtils.isEmpty(dqVar.h()) || dqVar.ji() == 0) {
                return;
            }
            hatVar.n(8452, dqVar.h());
            hatVar.o(8453, dqVar.ji());
        }
    }

    @Override // com.bytedance.msdk.dq.dq
    public String dq(Context context, String str, com.bytedance.msdk.api.dq.d dVar) {
        HashMap p = tn.p("bidding_token", "true");
        if (this.mn == null) {
            this.mn = new dq(this);
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this.mn);
            f2.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, this.iw);
            hat f3 = hat.f();
            f3.m(8449, p);
            hat f4 = hat.f();
            f4.m(8443, f3.k());
            hat e2 = hat.e(dVar.j());
            e2.f19148c.put(8089, f4.k());
            f2.m(8090, e2.k());
            Bridge mn = com.bytedance.msdk.core.mp.dq.dq().mn();
            if (mn != null) {
                hat f5 = hat.f();
                f5.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
                f5.m(8424, f2.k());
                mn.call(8106, f5.k(), Void.class);
            } else {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "load ad class loader is null ");
            }
        }
        if (this.mn == null || dVar == null || dVar.i() == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dq2 = dVar.i().dq();
        return this.mn.dq(context, str, com.bytedance.msdk.core.cd.dq.dq(dq2 != null ? dq2.iw() : null));
    }

    @Override // com.bytedance.msdk.dq.dq
    public final void dq(Context context, Map<String, Object> map) {
        hat dq2 = dq(context, this, map, fw());
        if (dq2 != null) {
            this.mn = new dq(this.ox.le(), mp(), this);
            dq2.n(8429, this.dq);
            dq2.n(8430, q());
            dq2.m(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this.mn);
            dq2.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, this.iw);
            com.bytedance.msdk.iw.d.dq.d(fw());
            if (TextUtils.equals(fw(), MediationConstant.ADN_GDT)) {
                dq(context, dq2);
            } else {
                d(context, dq2);
            }
        }
    }

    @Override // com.bytedance.msdk.dq.dq
    public String fw() {
        no noVar = this.f1037d;
        return noVar != null ? noVar.jy() : "";
    }

    @Override // com.bytedance.msdk.dq.dq
    public String r() {
        com.bytedance.msdk.dq.dq.p dq2 = com.bytedance.msdk.iw.d.d.dq().dq(fw());
        if (dq2 != null) {
            return dq2.d();
        }
        return null;
    }
}
