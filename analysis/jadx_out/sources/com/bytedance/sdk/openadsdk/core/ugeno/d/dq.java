package com.bytedance.sdk.openadsdk.core.ugeno.d;

import android.content.Context;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.openadsdk.core.no;
import g.bgh;
import g.dbw;
import g.dlv;
import g.dmm;
import g.eyj;
import g.gsa;
import g.tr;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends bgh implements dbw {
    private i kk;

    public dq(Context context) {
        super(context);
        this.kk = new i(context, 1, no.ia().s());
    }

    @Override // g.dbw
    public void d() {
    }

    @Override // g.dbw
    public void dq() {
    }

    @Override // g.dbw
    public void dq(tr trVar) {
    }

    @Override // g.dbw
    public void dq(boolean z) {
        i iVar = this.kk;
        if (iVar != null) {
            if (z) {
                iVar.dq();
            } else {
                iVar.d();
            }
        }
    }

    @Override // g.bgh
    public boolean dq(Object... objArr) {
        HashMap hashMap;
        this.f11513d.dq(this);
        if (this.kk == null) {
            this.kk = new i(this.ia, 1, no.ia().s());
        }
        dmm c2 = this.f11513d.c();
        if (c2 == null || (hashMap = c2.f14435c) == null) {
            return false;
        }
        Object obj = hashMap.get("shake_value");
        if (obj instanceof Integer) {
            this.kk.dq(((Integer) obj).floatValue());
        }
        Object obj2 = hashMap.get("calculation_method");
        if (obj2 instanceof Integer) {
            this.kk.dq(((Integer) obj2).intValue());
        }
        Object obj3 = hashMap.get("shake_interact_conf");
        if (!(obj3 instanceof JSONObject)) {
            return false;
        }
        this.kk.ox((JSONObject) obj3);
        return false;
    }

    @Override // g.dbw
    public void ox() {
    }

    @Override // g.dbw
    public void p() {
        if (this.kk == null || !this.f11513d.kk().isShown()) {
            return;
        }
        this.kk.dq();
        this.kk.dq(new i.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.d.dq.1
            @Override // com.bytedance.sdk.component.utils.i.dq
            public void dq(int i) {
                if (((bgh) dq.this).dq == null || i != 1) {
                    return;
                }
                eyj eyjVar = ((bgh) dq.this).dq;
                dlv unused = ((bgh) dq.this).f11513d;
                ((gsa) eyjVar).e(((bgh) dq.this).iw, ((bgh) dq.this).ox.f13427b);
            }
        });
    }

    @Override // g.dbw
    public void s() {
        i iVar = this.kk;
        if (iVar != null) {
            iVar.d();
        }
    }
}
