package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.gaw;
import g.hat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class iw implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private Bridge f3749d;
    private ValueSet dq;

    public iw(Bridge bridge) {
        gaw gawVar = hat.f19146a;
        this.f3749d = gawVar;
        this.f3749d = bridge == null ? gawVar : bridge;
    }

    private ValueSet mn() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 241101:
                dq(new iw((Bridge) valueSet.objectValue(0, Bridge.class)));
                return null;
            case 241102:
                dq(valueSet.booleanValue(0));
                return null;
            case 241103:
                return (T) dq();
            case 241104:
                return (T) d();
            case 241105:
                return (T) Boolean.class.cast(Boolean.valueOf(ox()));
            case 241106:
                return (T) Boolean.class.cast(Boolean.valueOf(iw()));
            case 241107:
                return (T) Boolean.class.cast(Boolean.valueOf(s()));
            case 241108:
                return (T) p();
            default:
                return null;
        }
    }

    public String d() {
        return (String) this.f3749d.call(241104, hat.g(0).k(), String.class);
    }

    public String dq() {
        return (String) this.f3749d.call(241103, hat.g(0).k(), String.class);
    }

    public void dq(iw iwVar) {
        hat g2 = hat.g(1);
        g2.m(0, iwVar);
        this.f3749d.call(241101, g2.k(), Void.class);
    }

    public void dq(boolean z) {
        hat g2 = hat.g(1);
        g2.i(0, z);
        this.f3749d.call(241102, g2.k(), Void.class);
    }

    public boolean iw() {
        return ((Boolean) this.f3749d.call(241106, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    public boolean ox() {
        return ((Boolean) this.f3749d.call(241105, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    public List<iw> p() {
        List list = (List) this.f3749d.call(241108, hat.g(0).k(), List.class);
        if (list == null) {
            list = new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new iw((Bridge) it.next()));
        }
        return arrayList;
    }

    public boolean s() {
        return ((Boolean) this.f3749d.call(241107, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet mn = mn();
        this.dq = mn;
        return mn;
    }
}
