package com.bytedance.sdk.openadsdk.f.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.FilterWord;
import g.hat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class iw implements Bridge, FilterWord {

    /* renamed from: d, reason: collision with root package name */
    private FilterWord f3756d;
    private final Bridge dq;

    public iw(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public iw(FilterWord filterWord) {
        this.f3756d = filterWord;
        this.dq = hat.f19146a;
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public void addOption(FilterWord filterWord) {
        hat g2 = hat.g(1);
        g2.m(0, new iw(filterWord));
        this.dq.call(241101, g2.k(), Void.class);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        FilterWord filterWord = this.f3756d;
        if (filterWord == null) {
            return null;
        }
        switch (i) {
            case 241101:
                this.f3756d.addOption(new iw((Bridge) valueSet.objectValue(0, Bridge.class)));
                return null;
            case 241102:
                this.f3756d.setIsSelected(valueSet.booleanValue(0));
                return null;
            case 241103:
                return (T) filterWord.getId();
            case 241104:
                return (T) filterWord.getName();
            case 241105:
                return (T) Boolean.class.cast(Boolean.valueOf(filterWord.getIsSelected()));
            case 241106:
                return (T) Boolean.class.cast(Boolean.valueOf(filterWord.hasSecondOptions()));
            case 241107:
                return (T) Boolean.class.cast(Boolean.valueOf(filterWord.isValid()));
            case 241108:
                return (T) filterWord.getOptions();
            default:
                return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public String getId() {
        return (String) this.dq.call(241103, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public boolean getIsSelected() {
        return ((Boolean) this.dq.call(241105, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public String getName() {
        return (String) this.dq.call(241104, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public List<FilterWord> getOptions() {
        List list = (List) this.dq.call(241108, hat.g(0).k(), List.class);
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

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public boolean hasSecondOptions() {
        return ((Boolean) this.dq.call(241106, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public boolean isValid() {
        return ((Boolean) this.dq.call(241107, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.FilterWord
    public void setIsSelected(boolean z) {
        hat g2 = hat.g(1);
        g2.i(0, z);
        this.dq.call(241102, g2.k(), Void.class);
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return hat.f19147b;
    }
}
