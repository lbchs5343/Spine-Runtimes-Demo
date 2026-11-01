package com.bytedance.sdk.openadsdk.core.ugeno;

import android.content.Context;
import android.graphics.Color;
import com.bytedance.sdk.openadsdk.core.ugeno.component.interact.no;
import com.bytedance.sdk.openadsdk.core.wp;
import g.akg;
import g.aok;
import g.apb;
import g.aqd;
import g.bgh;
import g.bix;
import g.bsq;
import g.btr;
import g.bv;
import g.cco;
import g.cfe;
import g.chx;
import g.cpz;
import g.ctj;
import g.dlv;
import g.efb;
import g.eid;
import g.eji;
import g.fde;
import g.fzn;
import g.fzx;
import g.gap;
import g.gfz;
import g.gii;
import g.gpu;
import g.he;
import g.hew;
import g.re;
import g.um;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class s {
    public static void dq() {
        fzn j = fzn.j();
        wp.getContext();
        gfz gfzVar = new gfz() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1
            @Override // g.gfz
            public List<gap> dq() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new gap("View") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.1
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.adsdk.ugeno.yoga.d.dq(context);
                    }
                });
                arrayList.add(new gap("CustomComponent") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.12
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.adsdk.ugeno.yoga.d.dq(context);
                    }
                });
                arrayList.add(new gap("Text") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.23
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new efb(context);
                    }
                });
                arrayList.add(new gap("Image") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.28
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new fde(context);
                    }
                });
                arrayList.add(new gap("FlexLayout") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.29
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new bsq(context);
                    }
                });
                arrayList.add(new gap("FrameLayout") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.30
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new bix(context);
                    }
                });
                arrayList.add(new gap("ScrollLayout") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.31
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new chx(context);
                    }
                });
                arrayList.add(new gap("RichText") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.32
                    @Override // g.gap
                    public dlv dq(Context context) {
                        eji ejiVar = new eji(context, 0);
                        ejiVar.f15655g = he.UNDEFINED_ITEM_ID;
                        ejiVar.f15654ab = 2;
                        return ejiVar;
                    }
                });
                arrayList.add(new gap("Input") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.33
                    @Override // g.gap
                    public dlv dq(Context context) {
                        cpz cpzVar = new cpz(context, 0);
                        cpzVar.f13313ab = 1;
                        cpzVar.y = he.UNDEFINED_ITEM_ID;
                        cpzVar.ad = 2;
                        return cpzVar;
                    }
                });
                arrayList.add(new gap("Dislike") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.2
                    @Override // g.gap
                    public dlv dq(Context context) {
                        um umVar = new um(context, 0);
                        umVar.f20101g = 0;
                        umVar.f20100a = 0;
                        return umVar;
                    }
                });
                arrayList.add(new gap("RatingBar") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.3
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new aok(context);
                    }
                });
                arrayList.add(new gap("RatingStar") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.4
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new aok(context);
                    }
                });
                arrayList.add(new gap("UgenProgressView") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.5
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new hew(context, 0);
                    }
                });
                arrayList.add(new gap("ProgressButton") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.6
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new hew(context, 0);
                    }
                });
                arrayList.add(new gap("Button") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.7
                    @Override // g.gap
                    public dlv dq(Context context) {
                        aqd aqdVar = new aqd(context);
                        aqdVar.f10650ab = "row";
                        return aqdVar;
                    }
                });
                arrayList.add(new gap("RecyclerLayout") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.8
                    @Override // g.gap
                    public dlv dq(Context context) {
                        eid eidVar = new eid(context);
                        eidVar.aa = new HashMap();
                        return eidVar;
                    }
                });
                arrayList.add(new gap("Video") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.9
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.video.d(context);
                    }
                });
                arrayList.add(new gap("Gif") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.10
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.gif.dq(context);
                    }
                });
                arrayList.add(new gap("VideoPlaceholder") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.11
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.ox.dq(context);
                    }
                });
                arrayList.add(new gap("Lottie") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.13
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new fzx(context);
                    }
                });
                arrayList.add(new gap("InterLottie") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.14
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new akg(context);
                    }
                });
                arrayList.add(new gap("InteractionWebView") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.15
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new no(context);
                    }
                });
                arrayList.add(new gap("WebView") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.16
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.webview.dq(context);
                    }
                });
                arrayList.add(new gap("Blur") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.17
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.dq(context);
                    }
                });
                arrayList.add(new gap("Swiper") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.18
                    @Override // g.gap
                    public dlv dq(Context context) {
                        cfe cfeVar = new cfe(context);
                        cfeVar.ae = true;
                        cfeVar.ag = true;
                        cfeVar.y = 2000.0f;
                        cfeVar.ac = "normal";
                        cfeVar.ad = true;
                        cfeVar.ai = Color.parseColor("#666666");
                        cfeVar.f12777g = Color.parseColor("#ffffff");
                        return cfeVar;
                    }
                });
                arrayList.add(new gap("FVCountdown") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.19
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.dq(context);
                    }
                });
                arrayList.add(new gap("RVCountdown") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.20
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.dq(context);
                    }
                });
                arrayList.add(new gap("CycleCountDownView") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.21
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.d(context);
                    }
                });
                arrayList.add(new gap("Icon") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.22
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.dq.dq(context);
                    }
                });
                arrayList.add(new gap("FVSkip") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.24
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.d.dq(context);
                    }
                });
                arrayList.add(new gap("RVSkip") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.25
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.d.dq(context);
                    }
                });
                arrayList.add(new gap("VideoV3") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.26
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.component.ox.dq(context);
                    }
                });
                arrayList.add(new gap("PlayableComponent") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.1.27
                    @Override // g.gap
                    public dlv dq(Context context) {
                        return new bix(context);
                    }
                });
                return arrayList;
            }
        };
        p pVar = new p();
        j.f17729d = gfzVar;
        j.f17730e = pVar;
        ArrayList arrayList = new ArrayList();
        j.h = arrayList;
        gfz gfzVar2 = (gfz) j.f17729d;
        if (gfzVar2 != null) {
            arrayList.addAll(gfzVar2.dq());
        }
        ArrayList arrayList2 = (ArrayList) j.h;
        HashMap hashMap = cco.f12644a;
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                gap gapVar = (gap) it.next();
                if (gapVar != null) {
                    cco.f12644a.put(gapVar.dq(), gapVar);
                }
            }
        }
        fzn j2 = fzn.j();
        bv bvVar = new bv() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.2
            @Override // g.bv
            public List<btr> dq() {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(new btr("shake") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.2.1
                    @Override // g.btr
                    public bgh dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.d.dq(context);
                    }
                });
                arrayList3.add(new btr("twist") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.2.2
                    @Override // g.btr
                    public bgh dq(Context context) {
                        return new com.bytedance.sdk.openadsdk.core.ugeno.d.d(context);
                    }
                });
                return arrayList3;
            }
        };
        j2.getClass();
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new apb("slide", 0));
        arrayList3.add(new apb("tap", 1));
        arrayList3.add(new apb("timer", 2));
        ArrayList arrayList4 = new ArrayList(arrayList3);
        arrayList4.addAll(bvVar.dq());
        HashMap hashMap2 = re.f19895a;
        if (arrayList4.size() > 0) {
            Iterator it2 = arrayList4.iterator();
            while (it2.hasNext()) {
                btr btrVar = (btr) it2.next();
                if (btrVar != null) {
                    re.f19895a.put(btrVar.dq(), btrVar);
                }
            }
        }
        fzn.j().f17731f = new gpu(15);
        fzn.j().i = new ctj() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.s.3
            @Override // g.ctj
            public gii dq(Context context) {
                return new iw(context);
            }
        };
    }
}
