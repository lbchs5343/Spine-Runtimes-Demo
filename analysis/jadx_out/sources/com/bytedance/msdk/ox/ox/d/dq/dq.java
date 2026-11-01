package com.bytedance.msdk.ox.ox.d.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.ox.dq.ia;
import com.bytedance.msdk.ox.dq.iw;
import com.bytedance.msdk.ox.dq.kk;
import com.bytedance.msdk.ox.dq.mn;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private int f1170d;
    private ox dq;
    private com.bytedance.msdk.api.dq.d iw;
    private no mn;
    private int ox;
    private Bridge p;
    private com.bytedance.msdk.ox.s.d.d s;

    public dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.ox.s.d.d dVar2, ox oxVar) {
        this.f1170d = dVar.le();
        this.iw = dVar;
        this.ox = dVar2.jy();
        this.s = dVar2;
        this.dq = oxVar;
        this.mn = dVar2.ia();
    }

    private s dq() {
        switch (this.f1170d) {
            case 1:
                return new com.bytedance.msdk.ox.dq.ox(this.s);
            case 2:
                return new iw(this.s);
            case 3:
                return new kk(this.s);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                int i = this.ox;
                return i == 4 ? new mn(this.s, this.dq) : i == 3 ? new com.bytedance.msdk.ox.dq.ox(this.s) : i == 5 ? new mn(this.s, this.dq) : new mn(this.s, this.dq);
            case 7:
                int i2 = this.ox;
                if (i2 != 6 && i2 == 7) {
                    return new com.bytedance.msdk.ox.dq.s(this.s);
                }
                return new ia(this.s);
            case 8:
                return new com.bytedance.msdk.ox.dq.s(this.s);
            case 9:
                return new mn(this.s, this.dq);
            case 10:
                int i3 = this.ox;
                if (i3 == 1) {
                    return new iw(this.s);
                }
                if (i3 == 2) {
                    return new com.bytedance.msdk.ox.dq.s(this.s);
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
            if (obj instanceof s) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add((s) obj);
                this.dq.dq(arrayList, new com.bytedance.msdk.api.dq(intValue, stringValue));
            }
        } else if (i == 8107) {
            List list = (List) valueSet.objectValue(8303, List.class);
            ArrayList arrayList2 = new ArrayList();
            if (list.size() <= 0 || (list.get(0) instanceof s)) {
                for (Object obj2 : list) {
                    if (obj2 instanceof s) {
                        arrayList2.add((s) obj2);
                    }
                }
                this.dq.dq(arrayList2);
            } else if (list.get(0) instanceof s) {
                arrayList2.add((s) list.get(0));
            }
        } else {
            if (i == 8127) {
                return (T) dq();
            }
            if (i == 8110) {
                return (T) Boolean.valueOf(this.s.dq());
            }
            if (i == 8136) {
                return (T) Boolean.valueOf(this.s.k());
            }
            if (i == 8141) {
                return (T) Boolean.valueOf(this.s.wp());
            }
            if (i == 8137) {
                return (T) this.s.e();
            }
            if (i == 8226) {
                return (T) Integer.valueOf(this.s.gh());
            }
            if (i == 8138) {
                this.p = (Bridge) valueSet.objectValue(8043, Bridge.class);
            } else {
                if (i == 8210) {
                    return (T) Boolean.valueOf(this.dq.dq());
                }
                if (i == 20000) {
                    Bridge bridge = (Bridge) valueSet.objectValue(10010, Bridge.class);
                    String str = (String) valueSet.objectValue(10011, String.class);
                    Context context = (Context) valueSet.objectValue(10000, Context.class);
                    if (bridge == null || TextUtils.isEmpty(str) || this.iw == null || this.mn == null) {
                        com.bytedance.msdk.core.dq.dq.dq.d(this.iw);
                    } else {
                        com.bytedance.msdk.core.dq.dq.dq.dq d2 = com.bytedance.msdk.core.dq.dq.dq.d(str, this.f1170d, this.ox);
                        if (d2 != null) {
                            com.bytedance.msdk.core.dq.dq.dq.dq(this.iw);
                            d2.dq(context, bridge, this.iw, this.mn, new com.bytedance.msdk.core.dq.dq.dq.d() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.1
                                @Override // com.bytedance.msdk.core.dq.dq.dq.d
                                public void dq(int i2, String str2) {
                                    if (dq.this.dq != null) {
                                        dq.this.dq.dq(new com.bytedance.msdk.api.dq(i2, str2));
                                    }
                                }

                                @Override // com.bytedance.msdk.core.dq.dq.dq.d
                                public void dq(s sVar, com.bytedance.msdk.api.dq dqVar) {
                                    if (dq.this.dq != null) {
                                        dq.this.dq.dq(sVar, dqVar);
                                    }
                                }

                                @Override // com.bytedance.msdk.core.dq.dq.dq.d
                                public void dq(List<s> list2) {
                                    if (dq.this.dq != null) {
                                        dq.this.dq.dq(list2);
                                    }
                                }
                            });
                        } else {
                            com.bytedance.msdk.core.dq.dq.dq.d(this.iw);
                        }
                    }
                }
            }
        }
        return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
