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
public class d extends bgh implements dbw {
    private i kk;

    public d(Context context) {
        super(context);
        this.kk = new i(context, 2, no.ia().s());
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
        this.f11513d.dq(this);
        if (this.kk == null) {
            this.kk = new i(this.ia, 2, no.ia().s());
        }
        dmm c2 = this.f11513d.c();
        if (c2 == null) {
            return false;
        }
        HashMap hashMap = c2.f14435c;
        if (hashMap != null) {
            Object obj = hashMap.get("rotation_angle");
            if (obj instanceof Integer) {
                this.kk.d(((Integer) obj).floatValue());
            }
            Object obj2 = hashMap.get("calculation_method_twist");
            if (obj2 instanceof Integer) {
                this.kk.d(((Integer) obj2).intValue());
            }
            Object obj3 = hashMap.get("twist_config");
            if (obj3 instanceof JSONObject) {
                this.kk.dq((JSONObject) obj3);
            }
            Object obj4 = hashMap.get("twist_interact_conf");
            if (obj4 instanceof JSONObject) {
                this.kk.d((JSONObject) obj4);
            }
        }
        this.kk.dq(new i.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.d.d.1
            @Override // com.bytedance.sdk.component.utils.i.dq
            public void dq(int i) {
                if (((bgh) d.this).dq == null || i != 2) {
                    return;
                }
                eyj eyjVar = ((bgh) d.this).dq;
                dlv unused = ((bgh) d.this).f11513d;
                ((gsa) eyjVar).e(((bgh) d.this).iw, ((bgh) d.this).ox.f13427b);
            }
        });
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
    }

    @Override // g.dbw
    public void s() {
        i iVar = this.kk;
        if (iVar != null) {
            iVar.d();
        }
    }
}
