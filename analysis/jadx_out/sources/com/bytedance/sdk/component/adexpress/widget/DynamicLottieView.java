package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.ia;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import g.abn;
import g.awf;
import g.dpc;
import g.fav;
import g.fsj;
import g.gkb;
import g.hcl;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DynamicLottieView extends gkb {

    /* renamed from: d, reason: collision with root package name */
    private String f1798d;
    private Map<String, Bitmap> dq;
    private Map<String, String> ia;
    private int iw;
    private int mn;
    private boolean ox;
    private boolean p;
    private int s;

    public DynamicLottieView(Context context) {
        super(context);
        this.dq = new HashMap();
    }

    private void no() {
        setAnimationFromUrl(this.f1798d);
        setImageAssetDelegate(new fsj() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.3
            @Override // g.fsj
            public Bitmap dq(final hcl hclVar) {
                if (hclVar == null) {
                    return null;
                }
                final String str = hclVar.f19223d;
                String str2 = hclVar.f19222c;
                if (TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2)) {
                    str = (TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str)) ? (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) ? "" : awf.c(str, str2) : str2;
                }
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                Bitmap bitmap = DynamicLottieView.this.dq == null ? null : (Bitmap) DynamicLottieView.this.dq.get(str);
                if (bitmap != null) {
                    return bitmap;
                }
                com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s().dq(str).dq(new ia() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.3.2
                    @Override // com.bytedance.sdk.component.iw.ia
                    @ATSMethod(1)
                    public Bitmap dq(Bitmap bitmap2) {
                        hcl hclVar2 = hclVar;
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, hclVar2.f19224e, hclVar2.h, false);
                        if (DynamicLottieView.this.dq != null) {
                            DynamicLottieView.this.dq.put(str, createScaledBitmap);
                        }
                        return createScaledBitmap;
                    }
                }).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.3.1
                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(2)
                    public void dq(int i, String str3, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(1)
                    public void dq(no<Bitmap> noVar) {
                        Bitmap ox = noVar.ox();
                        hcl hclVar2 = hclVar;
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(ox, hclVar2.f19224e, hclVar2.h, false);
                        if (DynamicLottieView.this.dq != null) {
                            DynamicLottieView.this.dq.put(str, createScaledBitmap);
                        }
                        DynamicLottieView.this.dq(hclVar.j, createScaledBitmap);
                    }
                });
                if (DynamicLottieView.this.dq == null) {
                    return null;
                }
                return (Bitmap) DynamicLottieView.this.dq.get(str);
            }
        });
        dq();
    }

    private void o() {
        setAnimationFromUrl("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/lotties/" + this.f1798d + ".json");
        setImageAssetDelegate(new fsj() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.1
            @Override // g.fsj
            public Bitmap dq(final hcl hclVar) {
                final String str;
                str = hclVar.f19222c;
                str.getClass();
                switch (str) {
                    case "{appIcon}":
                        if (DynamicLottieView.this.ia != null) {
                            str = (String) DynamicLottieView.this.ia.get("icon");
                            break;
                        }
                        break;
                    case "{adImage}":
                    case "{slot}":
                        if (DynamicLottieView.this.ia != null) {
                            str = (String) DynamicLottieView.this.ia.get("imageUrl");
                            break;
                        }
                        break;
                }
                Bitmap bitmap = (Bitmap) DynamicLottieView.this.dq.get(str);
                if (bitmap != null) {
                    return bitmap;
                }
                com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s().dq(str).ox(2).dq(new ia() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.1.2
                    @Override // com.bytedance.sdk.component.iw.ia
                    @ATSMethod(1)
                    public Bitmap dq(Bitmap bitmap2) {
                        hcl hclVar2 = hclVar;
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, hclVar2.f19224e, hclVar2.h, false);
                        DynamicLottieView.this.dq.put(str, createScaledBitmap);
                        return createScaledBitmap;
                    }
                }).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.1.1
                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(2)
                    public void dq(int i, String str2, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(1)
                    public void dq(no<Bitmap> noVar) {
                        Bitmap ox = noVar.ox();
                        hcl hclVar2 = hclVar;
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(ox, hclVar2.f19224e, hclVar2.h, false);
                        DynamicLottieView.this.dq.put(str, createScaledBitmap);
                        DynamicLottieView.this.dq(hclVar.j, createScaledBitmap);
                    }
                });
                return (Bitmap) DynamicLottieView.this.dq.get(str);
            }
        });
        if (this.ia != null) {
            dpc dpcVar = new dpc(this);
            String str = this.ia.get("app_name");
            String str2 = this.ia.get("description");
            String str3 = this.ia.get(abn.EXTRA_TITLE);
            if (this.s > 0 && str.length() > this.s) {
                str = str.substring(0, this.s - 1) + "...";
            } else if (this.s <= 0) {
                str = "";
            }
            if (this.iw > 0 && str3.length() > this.iw) {
                str3 = str3.substring(0, this.iw - 1) + "...";
            } else if (this.s <= 0) {
                str3 = "";
            }
            if (this.mn > 0 && str2.length() > this.mn) {
                str2 = str2.substring(0, this.mn - 1) + "...";
            } else if (this.s <= 0) {
                str2 = "";
            }
            HashMap hashMap = dpcVar.f14573c;
            hashMap.put("{appName}", str);
            gkb gkbVar = dpcVar.f14574d;
            if (gkbVar != null) {
                gkbVar.invalidate();
            }
            hashMap.put("{adTitle}", str3);
            if (gkbVar != null) {
                gkbVar.invalidate();
            }
            hashMap.put("{adDesc}", str2);
            if (gkbVar != null) {
                gkbVar.invalidate();
            }
            setTextDelegate(dpcVar);
            setFontAssetDelegate(new fav() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.2
                @Override // g.fav
                public String d(String str4) {
                    return null;
                }

                @Override // g.fav
                public Typeface dq(String str4) {
                    return Typeface.MONOSPACE;
                }
            });
        }
        dq();
    }

    public void kk() {
        if (TextUtils.isEmpty(this.f1798d)) {
            return;
        }
        setProgress(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        dq(this.ox);
        if (this.p) {
            no();
        } else {
            o();
        }
    }

    @Override // g.gkb, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        kk();
    }

    @Override // g.gkb, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        iw();
    }

    public void setAnimationsLoop(boolean z) {
        this.ox = z;
    }

    public void setData(Map<String, String> map) {
        this.ia = map;
    }

    public void setImageLottieTosPath(String str) {
        this.f1798d = str;
    }

    public void setLottieAdDescMaxLength(int i) {
        this.mn = i;
    }

    public void setLottieAdTitleMaxLength(int i) {
        this.iw = i;
    }

    public void setLottieAppNameMaxLength(int i) {
        this.s = i;
    }

    public void setOnlyLoadNetImage(boolean z) {
        this.p = z;
    }
}
