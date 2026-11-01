package com.bykv.vk.openvk.component.video.dq.d.s;

import com.bykv.vk.openvk.component.video.dq.d.kk;
import com.bytedance.sdk.component.d.dq.f;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class iw extends dq {
    private f ox;

    public iw(f fVar, s sVar) {
        com.bytedance.sdk.component.d.dq.iw mn;
        this.ox = fVar;
        this.dq = new ArrayList();
        if (fVar != null && (mn = fVar.mn()) != null) {
            for (int i = 0; i < mn.dq(); i++) {
                this.dq.add(new kk.d(mn.dq(i), mn.d(i)));
            }
        }
        this.f554d = sVar;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.dq
    public boolean d() {
        return this.ox.ox() >= 200 && this.ox.ox() < 300;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.dq
    public int dq() {
        return this.ox.ox();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.dq
    public String dq(String str, String str2) {
        return dq(str) != null ? dq(str).f541d : str2;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.dq
    public String iw() {
        return dq(this.ox.ox());
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.dq
    public List<kk.d> ox() {
        return this.dq;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.dq
    public InputStream p() {
        return this.ox.iw().ox();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.dq
    public String s() {
        f fVar = this.ox;
        return (fVar == null || fVar.ia() == null) ? "http/1.1" : this.ox.ia().toString();
    }
}
