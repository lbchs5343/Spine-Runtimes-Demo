package com.bytedance.sdk.openadsdk.upie;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.jy;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.kk.d.ox;
import com.bytedance.sdk.component.mn.p;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.iw;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import g.ada;
import g.awf;
import g.tn;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static final String f3877d;
    private static final String dq;
    private static volatile d p;
    private final com.bytedance.sdk.component.mn.dq ox = new p.dq().dq("lottie_tpl_info").dq(com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext()).dq(1).d(com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().ig()).dq();

    public interface dq<T> {
        void dq(int i, String str);

        void dq(T t);
    }

    static {
        StringBuilder sb = new StringBuilder("tt_derive");
        String str = File.separator;
        dq = awf.r(sb, str, "lottie", str, MediaFormat.KEY_AUDIO);
        f3877d = tn.r("tt_derive", str, "lottie", str, "anim_img");
    }

    private d() {
    }

    public static d dq() {
        if (p == null) {
            synchronized (d.class) {
                try {
                    if (p == null) {
                        p = new d();
                    }
                } finally {
                }
            }
        }
        return p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, String str2) {
        String d2 = s.d(str);
        if (TextUtils.isEmpty(d2)) {
            return;
        }
        this.ox.dq(d2, str2);
    }

    public void d(String str, final dq<Bitmap> dqVar) {
        jy s = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s();
        if (s != null) {
            s.dq(str).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.upie.d.3
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str2, Throwable th) {
                    dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.dq(i, "load ad pic fail: ".concat(String.valueOf(str2)));
                    }
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    dq dqVar2;
                    try {
                        Bitmap ox = noVar.ox();
                        if (ox == null || (dqVar2 = dqVar) == null) {
                            return;
                        }
                        dqVar2.dq(ox);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }, 4);
        } else if (dqVar != null) {
            dqVar.dq(-1, "imageCenter is null");
        }
    }

    public String dq(Context context) {
        return iw.dq(context, com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().ig(), f3877d).getAbsolutePath();
    }

    public String dq(String str) {
        String d2 = s.d(str);
        if (TextUtils.isEmpty(d2)) {
            return null;
        }
        return this.ox.d(d2, "");
    }

    public void dq(Context context, com.bytedance.sdk.openadsdk.upie.dq dqVar) {
        if (dqVar != null) {
            String ox = dqVar.ox();
            if (!TextUtils.isEmpty(ox)) {
                d(ox, null);
            }
            String dq2 = dqVar.dq();
            if (TextUtils.isEmpty(dq2) || !TextUtils.isEmpty(dq(dq2))) {
                return;
            }
            dq(dq2, (dq<String>) null);
        }
    }

    public void dq(Context context, String str, final dq<Bitmap> dqVar) {
        jy s = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s();
        if (s != null) {
            s.dq(str).ox(dq(context)).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.upie.d.2
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str2, Throwable th) {
                    dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.dq(i, "load lottie pic fail: ".concat(String.valueOf(str2)));
                    }
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    dq dqVar2;
                    try {
                        Bitmap ox = noVar.ox();
                        if (ox == null || (dqVar2 = dqVar) == null) {
                            return;
                        }
                        dqVar2.dq(ox);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }, 4);
        } else if (dqVar != null) {
            dqVar.dq(-1, "imageCenter is null");
        }
    }

    public void dq(final String str, final dq<String> dqVar) {
        ox s = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().s();
        if (s == null) {
            return;
        }
        s.dq(str);
        s.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.upie.d.1
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                String p2;
                boolean z = false;
                if (dVar != null) {
                    try {
                        if (dVar.ia() && (p2 = dVar.p()) != null) {
                            try {
                                ig.dq("TTDeriveTplManager", "lottie content is ok, version: " + new JSONObject(p2).optString(ada.COLUMN_VALUE));
                                d.this.dq(str, p2);
                                dq dqVar2 = dqVar;
                                if (dqVar2 != null) {
                                    dqVar2.dq(p2);
                                    return;
                                }
                                return;
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                                if (dqVar != null) {
                                    String message = e2.getMessage();
                                    if (message != null && message.length() > 100) {
                                        message = message.substring(0, 100);
                                    }
                                    dqVar.dq(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec, "lottieJsonUrl加载失败0, " + message);
                                    return;
                                }
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                        dq dqVar3 = dqVar;
                        if (dqVar3 != null) {
                            dqVar3.dq(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM, "lottieJsonUrl加载失败2, " + th.getMessage());
                            return;
                        }
                        return;
                    }
                }
                dq dqVar4 = dqVar;
                if (dqVar4 != null) {
                    StringBuilder sb = new StringBuilder("lottieJsonUrl加载失败1, response is not null:");
                    sb.append(dVar != null);
                    sb.append(", isSuccess:");
                    if (dVar != null && dVar.ia()) {
                        z = true;
                    }
                    sb.append(z);
                    dqVar4.dq(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM, sb.toString());
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM, "lottieJsonUrl加载失败3, " + iOException.getMessage());
                }
            }
        });
    }
}
