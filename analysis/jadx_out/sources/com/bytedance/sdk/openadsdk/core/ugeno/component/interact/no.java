package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.content.Context;
import android.text.TextUtils;
import g.dlv;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class no extends dlv {

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f3564d;
    private String dq;

    public no(Context context) {
        super(context, 0);
    }

    public void d() {
        if (TextUtils.isEmpty(this.dq)) {
            this.dq = "https://cdn-tos-cn.bytedance.net/obj/archi/ad/play-comp/playable-component-sdk/dev/index.ecommerce.html";
        }
        ((InteractWebView) this.ia).dq(this.dq);
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public InteractWebView ox() {
        InteractWebView interactWebView = new InteractWebView(this.s);
        this.ia = interactWebView;
        return interactWebView;
    }

    @Override // g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        if (str.equals("src")) {
            if (TextUtils.isEmpty(this.dq) || !this.dq.startsWith("http")) {
                this.dq = "https://cdn-tos-cn.bytedance.net/obj/archi/ad/play-comp/playable-component-sdk/dev/index.ecommerce.html";
            } else {
                this.dq = str2;
            }
        }
    }

    @Override // g.dlv
    public void p() {
        super.p();
        HashMap hashMap = this.ig.f14435c;
        this.f3564d = hashMap;
        ((InteractWebView) this.ia).setUGenExtraMap(hashMap);
        ((InteractWebView) this.ia).setUGenContext(this.ig);
        ((InteractWebView) this.ia).ig();
        ((InteractWebView) this.ia).mp();
        d();
    }
}
