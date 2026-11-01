package com.bytedance.msdk.dq.p.dq.p;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class d extends com.bytedance.msdk.dq.p.dq.dq {
    private com.bytedance.msdk.api.p.dq.d.ia.ox ox;

    public d(String str, com.bytedance.msdk.api.p.dq.d.d.d dVar) {
        super(str, dVar);
        com.bytedance.msdk.api.p.dq.d.d.d dVar2 = this.f1071d;
        if (dVar2 instanceof com.bytedance.msdk.api.p.dq.d.ia.ox) {
            this.ox = (com.bytedance.msdk.api.p.dq.d.ia.ox) dVar2;
        }
    }

    @Override // com.bytedance.msdk.dq.p.dq.dq
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8222) {
            return (T) Boolean.valueOf(ia());
        }
        if (i == 8223) {
            return (T) Boolean.valueOf(kk());
        }
        if (i == 8123) {
            dq(valueSet.intValue(8014), valueSet.stringValue(8015));
            return null;
        }
        if (i != 8107) {
            return null;
        }
        dq((List<Bridge>) valueSet.objectValue(8303, List.class));
        return null;
    }

    public void dq(int i, String str) {
        com.bytedance.msdk.api.p.dq.d.ia.ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq(new com.bytedance.msdk.api.p.dq.d.dq(i, str));
        }
    }

    public void dq(List<Bridge> list) {
        if (this.ox == null || list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Bridge> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new ox(this.f1071d, it.next()));
        }
        this.ox.dq(arrayList);
    }

    public boolean ia() {
        com.bytedance.msdk.api.p.dq.d.ia.ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.iw();
        }
        return false;
    }

    public boolean kk() {
        com.bytedance.msdk.api.p.dq.d.ia.ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.s();
        }
        return false;
    }
}
