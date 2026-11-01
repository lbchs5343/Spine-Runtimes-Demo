package com.bytedance.sdk.openadsdk.core.ugeno.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.ia.d;
import g.acw;
import g.cdf;
import g.dlv;

/* loaded from: classes3.dex */
public class dq extends dlv {

    /* renamed from: d, reason: collision with root package name */
    protected int f3548d;
    protected String dq;

    public dq(Context context) {
        super(context, 0);
        this.f3548d = 25;
    }

    private void d() {
        if (TextUtils.isEmpty(this.dq)) {
            return;
        }
        ((cdf) this.ia).setImageDrawable(null);
        if (this.dq.startsWith("local://")) {
            mn.dq(new kk("UG_decode_img") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    Bitmap decodeResource = BitmapFactory.decodeResource(((dlv) dq.this).s.getResources(), acw.as(((dlv) dq.this).s, dq.this.dq.replace("local://", ""), TTDownloadField.TT_ID));
                    if (decodeResource != null) {
                        dq.this.dq(decodeResource);
                    }
                }
            });
        } else {
            d.dq(this.dq).ox(2).dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.dq.2
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                    ig.dq("UGBlurWidget", str, th);
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no noVar) {
                    Object ox = noVar.ox();
                    if (ox == null || !(ox instanceof Bitmap)) {
                        return;
                    }
                    dq.this.dq((Bitmap) ox);
                }
            }, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Bitmap bitmap) {
        final Bitmap dq = com.bytedance.sdk.component.adexpress.p.dq.dq(this.s, bitmap, 25);
        if (dq != null) {
            mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.dq.3
                @Override // java.lang.Runnable
                public void run() {
                    if (((dlv) dq.this).ia != null) {
                        ((cdf) ((dlv) dq.this).ia).setImageBitmap(dq);
                    }
                }
            });
        }
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public cdf ox() {
        cdf cdfVar = new cdf(this.s);
        cdfVar.f12684e = this;
        return cdfVar;
    }

    @Override // g.dlv
    public void dq(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.dq(str, str2);
        str.getClass();
        if (!str.equals("blurRate")) {
            if (str.equals("src")) {
                this.dq = str2;
            }
        } else {
            try {
                this.f3548d = Integer.parseInt(str2);
            } catch (Exception e2) {
                ig.d("UGBlurWidget", e2);
            }
        }
    }

    @Override // g.dlv
    public void p() {
        super.p();
        d();
        ((cdf) this.ia).setScaleType(ImageView.ScaleType.FIT_XY);
        ((cdf) this.ia).setBorderColor(this.dc);
        ((cdf) this.ia).setCornerRadius(this.gx);
        ((cdf) this.ia).setBorderWidth(this.cv);
    }
}
