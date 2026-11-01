package com.bytedance.sdk.component.adexpress.dynamic.ox;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.android.live.base.api.push.ILivePush;
import g.abn;
import g.awf;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class s {
    public static final Map<String, Integer> dq;

    /* renamed from: d, reason: collision with root package name */
    private String f1767d;
    private iw iw;
    private String mn;
    private String ox;
    private String p;
    private iw s;

    static {
        HashMap hashMap = new HashMap();
        dq = hashMap;
        hashMap.put("root", 8);
        hashMap.put("footer", 6);
        hashMap.put("empty", 6);
        hashMap.put(abn.EXTRA_TITLE, 0);
        hashMap.put(MediaFormat.KEY_SUBTITLE, 0);
        hashMap.put(abn.EXTRA_SOURCE, 0);
        hashMap.put("score-count", 0);
        hashMap.put("text_star", 0);
        hashMap.put("text", 0);
        hashMap.put("tag-group", 17);
        hashMap.put("app-version", 0);
        hashMap.put("development-name", 0);
        hashMap.put("privacy-detail", 23);
        hashMap.put("image", 1);
        hashMap.put("image-wide", 1);
        hashMap.put("image-square", 1);
        hashMap.put("image-long", 1);
        hashMap.put("image-splash", 1);
        hashMap.put("image-cover", 1);
        hashMap.put("app-icon", 1);
        hashMap.put("icon-download", 1);
        hashMap.put("logoad", 4);
        hashMap.put("logounion", 5);
        hashMap.put("logo-union", 9);
        hashMap.put("dislike", 3);
        hashMap.put(ILivePush.ClickType.CLOSE, 3);
        hashMap.put("close-fill", 3);
        hashMap.put("webview-close", 22);
        hashMap.put("feedback-dislike", 12);
        hashMap.put("button", 2);
        hashMap.put("downloadWithIcon", 2);
        hashMap.put("downloadButton", 2);
        hashMap.put("fillButton", 2);
        hashMap.put("laceButton", 2);
        hashMap.put("cardButton", 2);
        hashMap.put("colourMixtureButton", 2);
        hashMap.put("arrowButton", 1);
        hashMap.put("download-progress-button", 2);
        hashMap.put("vessel", 6);
        hashMap.put("image-group", 6);
        hashMap.put("custom-component-vessel", 6);
        hashMap.put("carousel", 24);
        hashMap.put("carousel-vessel", 26);
        hashMap.put("leisure-interact", 25);
        hashMap.put("video-hd", 7);
        hashMap.put(MediaFormat.KEY_VIDEO, 7);
        hashMap.put("video-vd", 7);
        hashMap.put("video-sq", 7);
        hashMap.put("muted", 10);
        hashMap.put("star", 11);
        hashMap.put("skip-countdowns", 19);
        hashMap.put("skip-with-countdowns-skip-btn", 21);
        hashMap.put("skip-with-countdowns-video-countdown", 13);
        hashMap.put("skip-with-countdowns-skip-countdown", 20);
        hashMap.put("skip-with-time", 14);
        hashMap.put("skip-with-time-countdown", 13);
        hashMap.put("skip-with-time-skip-btn", 15);
        hashMap.put("skip", 27);
        hashMap.put("timedown", 13);
        hashMap.put("icon", 16);
        hashMap.put("scoreCountWithIcon", 6);
        hashMap.put("split-line", 18);
        hashMap.put("creative-playable-bait", 0);
        hashMap.put("score-count-type-2", 0);
        hashMap.put("lottie", 28);
        hashMap.put("image-flip-slide", 29);
    }

    public String d() {
        return this.ox;
    }

    public void d(iw iwVar) {
        this.iw = iwVar;
    }

    public void d(String str) {
        this.ox = str;
    }

    public int dq() {
        if (TextUtils.isEmpty(this.f1767d)) {
            return 0;
        }
        if (this.f1767d.equals("logo")) {
            String str = this.f1767d + this.ox;
            this.f1767d = str;
            if (str.contains("logoad")) {
                return 4;
            }
            if (this.f1767d.contains("logounion")) {
                return 5;
            }
        }
        Map<String, Integer> map = dq;
        if (map.get(this.f1767d) != null) {
            return map.get(this.f1767d).intValue();
        }
        return -1;
    }

    public void dq(iw iwVar) {
        this.s = iwVar;
    }

    public void dq(String str) {
        this.f1767d = str;
    }

    public String getType() {
        return this.f1767d;
    }

    public int iw() {
        return this.s.wi();
    }

    public iw mn() {
        return this.iw;
    }

    public String ox() {
        return this.p;
    }

    public void ox(String str) {
        this.p = str;
    }

    public String p() {
        return this.mn;
    }

    public void p(String str) {
        this.mn = str;
    }

    public iw s() {
        return this.s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DynamicLayoutBrick{type='");
        sb.append(this.f1767d);
        sb.append("', data='");
        sb.append(this.ox);
        sb.append("', value=");
        sb.append(this.s);
        sb.append(", themeValue=");
        sb.append(this.iw);
        sb.append(", dataExtraInfo='");
        return awf.ad(sb, this.mn, "'}");
    }
}
