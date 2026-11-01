package com.bytedance.sdk.component.adexpress.dynamic.p;

import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.dynamic.p.d;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.abn;
import g.awf;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class no {

    /* renamed from: d, reason: collision with root package name */
    private static String f1775d;
    private static final Set<String> dq = Collections.unmodifiableSet(new HashSet(Arrays.asList("dislike", ILivePush.ClickType.CLOSE, "close-fill", "webview-close")));

    public static double d(String str) {
        try {
            return Double.parseDouble(new JSONObject(str).optString("fontSize"));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    public static boolean d() {
        return !TextUtils.isEmpty(f1775d);
    }

    public static int[] d(String str, float f2, boolean z) {
        try {
            TextView textView = new TextView(com.bytedance.sdk.component.adexpress.p.getContext());
            textView.setTextSize(f2);
            textView.setText(str);
            textView.setIncludeFontPadding(false);
            if (z) {
                textView.setSingleLine();
            }
            textView.measure(-2, -2);
            return new int[]{textView.getMeasuredWidth() + 2, textView.getMeasuredHeight() + 2};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }

    private static d.ox dq(d.ox oxVar, String str, String str2, String str3) {
        if (str.contains("union")) {
            oxVar.dq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            oxVar.f1771d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            return oxVar;
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = dq(str);
        }
        if (!TextUtils.isEmpty(str3)) {
            return dq(str3, str2);
        }
        oxVar.dq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        oxVar.f1771d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        return oxVar;
    }

    public static d.ox dq(String str, String str2) {
        return dq(str, str2, false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(3:181|(1:184)|185)(2:209|(1:211)(4:212|187|(5:196|197|198|(3:200|(1:206)(1:203)|204)|207)|195))|186|187|(3:189|191|193)|196|197|198|(0)|207) */
    /* JADX WARN: Removed duplicated region for block: B:200:0x047d A[Catch: Exception -> 0x048f, TryCatch #0 {Exception -> 0x048f, blocks: (B:198:0x0472, B:200:0x047d, B:204:0x0487), top: B:197:0x0472 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static d.ox dq(String str, String str2, String str3, boolean z, boolean z2, int i, com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, double d2, int i2, double d3, String str4, mp mpVar) {
        int i3;
        String str5;
        int i4;
        int i5;
        float f2;
        float f3;
        com.bytedance.sdk.component.adexpress.dynamic.ox.iw s;
        String str6 = str;
        int i6 = i;
        String p = mpVar.p();
        int ia = mpVar.ia();
        if (com.bytedance.sdk.component.adexpress.p.dq() && i2 != 4 && (TextUtils.equals(str2, "text_star") || TextUtils.equals(str2, "score-count") || TextUtils.equals(str2, "score-count-type-1") || TextUtils.equals(str2, "score-count-type-2"))) {
            return new d.ox(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        d.ox oxVar = new d.ox();
        if (str6.startsWith("<svg") || dq.contains(str2)) {
            try {
                if (ILivePush.ClickType.CLOSE.equals(str2) || (com.bytedance.sdk.component.adexpress.p.dq() && "close-fill".equals(str2))) {
                    float optDouble = (float) new JSONObject(str3).optDouble("fontSize");
                    oxVar.dq = optDouble;
                    oxVar.f1771d = optDouble;
                    return oxVar;
                }
            } catch (Exception unused) {
            }
            oxVar.dq = 10.0f;
            oxVar.f1771d = 10.0f;
            return oxVar;
        }
        if (!"logo".equals(str2)) {
            if ("development-name".equals(str2)) {
                StringBuilder sb = new StringBuilder();
                i3 = ia;
                sb.append(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_text_privacy_development"));
                sb.append(str6);
                str6 = sb.toString();
            } else {
                i3 = ia;
            }
            if ("app-version".equals(str2)) {
                StringBuilder sb2 = new StringBuilder();
                str5 = "";
                sb2.append(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_text_privacy_app_version"));
                sb2.append(str6);
                str6 = sb2.toString();
            } else {
                str5 = "";
            }
            if ("score-count".equals(str2)) {
                try {
                    i4 = Integer.parseInt(str6);
                } catch (NumberFormatException unused2) {
                    i4 = 0;
                }
                if (com.bytedance.sdk.component.adexpress.p.dq() && i4 < 0) {
                    return new d.ox(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
                return dq("(" + String.format(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_comment_num"), Integer.valueOf(i4)) + ")", str3);
            }
            if ("score-count-type-2".equals(str2)) {
                try {
                    i5 = Integer.parseInt(str6);
                } catch (NumberFormatException unused3) {
                    i5 = 0;
                }
                if (com.bytedance.sdk.component.adexpress.p.dq() && i5 < 0) {
                    return new d.ox(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
                return dq("(" + String.format(new DecimalFormat("###,###,###").format(i5), Integer.valueOf(i5)) + ")", str3);
            }
            if ("feedback-dislike".equals(str2)) {
                if (!com.bytedance.sdk.component.adexpress.p.dq()) {
                    return dq(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_feedback"), str3);
                }
                d.ox oxVar2 = new d.ox();
                float d4 = (float) d(str3);
                oxVar2.dq = d4;
                oxVar2.f1771d = d4;
                return oxVar2;
            }
            if ("skip-with-time-countdown".equals(str2) || TextUtils.equals("skip-with-countdowns-video-countdown", str2)) {
                return (mpVar.dq() && com.bytedance.sdk.component.adexpress.p.iw.d(p)) ? ((int) (d2 + 0.5d)) - i3 < 10 ? com.bytedance.sdk.component.adexpress.p.dq() ? dq("0s", str3) : dq(String.format(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_full_skip"), "0"), str3) : com.bytedance.sdk.component.adexpress.p.dq() ? dq("00s", str3) : dq(String.format(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_full_skip"), "00"), str3) : d2 < 10.0d ? dq("0S", str3) : dq("00S", str3);
            }
            if (TextUtils.equals("skip-with-countdowns-skip-btn", str2)) {
                return dq("| " + r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_screen_skip_tx"), str3);
            }
            if (TextUtils.equals("skip-with-countdowns-skip-countdown", str2)) {
                return dq("| ".concat(String.format(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_full_skip_count_down"), "00")), str3);
            }
            if ("skip-with-time-skip-btn".equals(str2)) {
                d.ox dq2 = dq("| " + r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_screen_skip_tx"), str3);
                if (com.bytedance.sdk.component.adexpress.p.dq()) {
                    try {
                        dq2.f1771d = (float) ((dq2.f1771d * new JSONObject(str3).optDouble("lineHeight")) / 1.2d);
                    } catch (Throwable unused4) {
                    }
                    dq2.dq = dq2.f1771d;
                }
                return dq2;
            }
            if ("skip".equals(str2)) {
                return dq(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_screen_skip_tx"), str3);
            }
            if ("timedown".equals(str2)) {
                return dq("0.0", str3);
            }
            if ("text_star".equals(str2)) {
                return (!com.bytedance.sdk.component.adexpress.p.dq() || (d3 >= 0.0d && d3 <= 5.0d)) ? dq("0.0", str3) : new d.ox(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }
            if (TextUtils.equals("privacy-detail", str2)) {
                return dq("功能 | 权限 | 隐私", str3);
            }
            if ("arrowButton".equals(str2)) {
                return dq("Download", str3);
            }
            if ("text".equals(str2) && com.bytedance.sdk.component.adexpress.p.dq() && TextUtils.isEmpty(str6) && (s = iaVar.o().s()) != null) {
                str6 = s.ij() != null ? iaVar.o().s().ij().optString(com.bytedance.sdk.component.adexpress.p.mn.p(com.bytedance.sdk.component.adexpress.p.getContext())) : str5;
            }
            if ("fillButton".equals(str2) || "text".equals(str2) || "button".equals(str2) || "downloadWithIcon".equals(str2) || "downloadButton".equals(str2) || "laceButton".equals(str2) || "cardButton".equals(str2) || "colourMixtureButton".equals(str2) || "arrowButton".equals(str2) || ((abn.EXTRA_SOURCE.equals(str2) && !(com.bytedance.sdk.component.adexpress.p.dq() && "open_ad".equals(p))) || TextUtils.equals("app-version", str2) || TextUtils.equals("development-name", str2))) {
                return dq(str6, str3);
            }
            try {
                JSONObject jSONObject = new JSONObject(str3);
                int length = str6.length();
                float optDouble2 = (float) jSONObject.optDouble("fontSize");
                float optDouble3 = (float) jSONObject.optDouble("letterSpacing");
                float optDouble4 = (float) jSONObject.optDouble("lineHeight");
                float optDouble5 = (float) jSONObject.optDouble("maxWidth");
                float f4 = ((optDouble2 + optDouble3) * length) - optDouble3;
                ig.p("DynamicBaseWidget", "getDomSizeFromNative letterSpacing==" + optDouble3 + ",lineHeight==" + optDouble4 + ",maxWidth ==" + optDouble5 + ",totalStrLength" + f4);
                if ("muted".equals(str2)) {
                    oxVar.dq = optDouble2;
                    oxVar.f1771d = optDouble2;
                    return oxVar;
                }
                if ("star".equals(str2)) {
                    if (com.bytedance.sdk.component.adexpress.p.dq() && (d3 < 0.0d || d3 > 5.0d || i2 != 4)) {
                        return new d.ox(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    }
                    d.ox dq3 = dq("str", str3);
                    dq3.dq = optDouble2 * 5.0f;
                    return dq3;
                }
                if ("icon".equals(str2)) {
                    oxVar.dq = optDouble2;
                    oxVar.f1771d = optDouble2;
                    return oxVar;
                }
                if (z) {
                    int i7 = ((int) (f4 / optDouble5)) + 1;
                    if (z2 && i7 >= i6) {
                        i7 = i6;
                    }
                    f2 = (float) (optDouble4 * optDouble2 * i7 * 1.2d);
                } else {
                    f2 = (float) (optDouble4 * optDouble2 * 1.2d);
                    if (f4 <= optDouble5) {
                        f3 = f4;
                        if (!abn.EXTRA_TITLE.equals(str2) || (com.bytedance.sdk.component.adexpress.p.dq() && "open_ad".equals(p) && abn.EXTRA_SOURCE.equals(str2))) {
                            d.ox dq4 = dq(str6.replace('\n', ' '), str3, false);
                            if (z) {
                                int i8 = ((int) (f4 / optDouble5)) + 1;
                                if (!z2 || i8 < i6) {
                                    i6 = i8;
                                }
                                dq4.f1771d *= i6;
                            }
                            return dq4;
                        }
                        oxVar.dq = f3;
                        oxVar.f1771d = f2;
                    }
                }
                f3 = optDouble5;
                if (!abn.EXTRA_TITLE.equals(str2)) {
                }
                d.ox dq42 = dq(str6.replace('\n', ' '), str3, false);
                if (z) {
                }
                return dq42;
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } else {
            if (!com.bytedance.sdk.component.adexpress.p.dq() && ((!TextUtils.isEmpty(str6) && str6.contains("adx:")) || d())) {
                return d() ? dq(oxVar, str6, str3, f1775d) : dq(oxVar, str6, str3, "");
            }
            oxVar.dq = "union".equals(str6) ? 10.0f : 20.0f;
            oxVar.f1771d = 10.0f;
            if (com.bytedance.sdk.component.adexpress.p.dq()) {
                String c2 = awf.c(str2, str6);
                float d5 = (float) d(str3);
                if (c2.contains("logoad")) {
                    return dq(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_logo_en"), str3);
                }
                oxVar.f1771d = d5;
                return oxVar;
            }
        }
        return oxVar;
    }

    public static d.ox dq(String str, String str2, boolean z) {
        d.ox oxVar = new d.ox();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int[] dq2 = dq(str, (float) d(str2), z);
            oxVar.dq = dq2[0];
            oxVar.f1771d = dq2[1];
            if (jSONObject.optDouble("lineHeight", 1.0d) != 0.0d) {
                return oxVar;
            }
            oxVar.f1771d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            return oxVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return oxVar;
        }
    }

    public static String dq() {
        return f1775d;
    }

    public static String dq(String str) {
        String[] split;
        return (TextUtils.isEmpty(str) || (split = str.split("adx:")) == null || split.length < 2) ? "" : split[1];
    }

    public static int[] dq(String str, float f2, boolean z) {
        int[] d2 = d(str, f2, z);
        return new int[]{com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), d2[0]), com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), d2[1])};
    }
}
