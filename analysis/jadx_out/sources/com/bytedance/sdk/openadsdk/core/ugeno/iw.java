package com.bytedance.sdk.openadsdk.core.ugeno;

import android.content.Context;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.openadsdk.core.no;
import g.dry;
import g.emr;
import g.gii;

/* loaded from: classes3.dex */
public class iw implements gii {
    private i dq;

    public iw(Context context) {
        this.dq = new i(context, 1, no.ia().s());
    }

    @Override // g.gii
    public void d() {
        i iVar = this.dq;
        if (iVar != null) {
            iVar.d();
        }
    }

    @Override // g.gii
    public void dq() {
        i iVar = this.dq;
        if (iVar != null) {
            iVar.dq();
        }
    }

    @Override // g.gii
    public void dq(float f2) {
        i iVar = this.dq;
        if (iVar != null) {
            iVar.dq(f2);
        }
    }

    @Override // g.gii
    public void dq(final dry dryVar) {
        i iVar = this.dq;
        if (iVar != null) {
            iVar.dq(new i.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.iw.1
                @Override // com.bytedance.sdk.component.utils.i.dq
                public void dq(int i) {
                    dry dryVar2 = dryVar;
                    if (dryVar2 != null) {
                        ((emr) dryVar2).aa(i);
                    }
                }
            });
        }
    }
}
