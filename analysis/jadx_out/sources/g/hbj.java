package g;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class hbj {

    /* renamed from: c, reason: collision with root package name */
    public String f19173c;

    /* renamed from: d, reason: collision with root package name */
    public hbj f19174d;
    public final String h;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f19177g = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f19172b = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f19175e = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public int f19171a = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f19176f = 0;
    public boolean i = false;

    public hbj(String str) {
        this.h = str;
    }

    public static StringBuilder j(hbj hbjVar, int i) {
        StringBuilder sb;
        String str;
        ArrayList arrayList = hbjVar.f19172b;
        String str2 = hbjVar.h;
        int size = arrayList.size();
        ArrayList arrayList2 = hbjVar.f19175e;
        int size2 = arrayList2.size();
        int i2 = size2 > 0 ? size2 * 64 : 64;
        if (hbjVar.f19174d == null) {
            sb = new StringBuilder(i2 + TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
            sb.append("<div class=\"li line\"><span class=\"sc\">&lt;?</span><span class=\"co\"></span><span class=\"ke\">xml version</span><span class=\"es\">=</span><span class=\"va\">\"1.0\"</span><span class=\"co\"></span><span class=\"ke\"> encoding</span><span class=\"es\">=</span><span class=\"va\">\"utf-8\"</span><span class=\"ec\">?&gt;</span></div>");
        } else {
            sb = new StringBuilder(i2);
        }
        if (hbjVar.f19174d != null && size > 1) {
            sb.append("<div class=\"li line\">&nbsp;</div>");
        }
        sb.append("<div class=\"li line\"><span class=\"sc\">&lt;</span><span class=\"na\">");
        sb.append(str2.replace("<", "&lt;").replace(">", "&gt;"));
        if (size == 1) {
            sb.append(" ");
        }
        sb.append("</span>");
        Iterator it = hbjVar.f19172b.iterator();
        while (it.hasNext()) {
            aow aowVar = (aow) it.next();
            if (aowVar != null && (str = aowVar.f10591a) != null) {
                if (aowVar.f10592b != null) {
                    if (size > 1) {
                        sb.append("</div><div class=\"pr line\">");
                    } else {
                        sb.append(" ");
                    }
                    if (!TextUtils.isEmpty(aowVar.f10593c)) {
                        sb.append("<span class=\"ns\">");
                        sb.append(aowVar.f10593c);
                        sb.append("</span><span class=\"co\">:</span>");
                    }
                    ArrayList arrayList3 = arrayList2;
                    if (size > 1) {
                        sb.append("<span class=\"ke\">");
                        sb.append(str.replace("<", "&lt;").replace(">", "&gt;"));
                        sb.append("</span>");
                    } else {
                        sb.append("<span class=\"ke\">");
                        sb.append(str.replace("<", "&lt;").replace(">", "&gt;"));
                        sb.append("</span>");
                    }
                    sb.append("<span class=\"es\">=</span><span class=\"va\">\"");
                    sb.append(aowVar.f10592b.replace("<", "&lt;").replace(">", "&gt;"));
                    sb.append("\"</span>");
                    arrayList2 = arrayList3;
                }
            }
        }
        ArrayList arrayList4 = arrayList2;
        if (size2 == 0 && TextUtils.isEmpty(hbjVar.f19173c)) {
            sb.append("<span class=\"ec\">/&gt;</span></div>");
        } else {
            sb.append("<span class=\"ec\">&gt;</span></div>");
        }
        if (!TextUtils.isEmpty(hbjVar.f19173c)) {
            sb.append("<span class=\"te\">");
            sb.append(hbjVar.f19173c.replace("<", "&lt;").replace(">", "&gt;"));
            sb.append("</span>");
        }
        Iterator it2 = arrayList4.iterator();
        while (it2.hasNext()) {
            hbj hbjVar2 = (hbj) it2.next();
            if (hbjVar2 != null) {
                sb.append("<div class=\"li\">");
                sb.append((CharSequence) j(hbjVar2, i + 1));
                sb.append("</div>");
            }
        }
        if (!TextUtils.isEmpty(hbjVar.f19173c)) {
            sb.append("<span class=\"sc\">&lt;/</span><span class=\"na\">");
            sb.append(str2.replace("<", "&lt;").replace(">", "&gt;"));
            sb.append("</span><span class=\"ec\">&gt;</span></div>");
        }
        if (size2 != 0) {
            sb.append("<div class=\"li line\"><span class=\"sc\">&lt;/</span><span class=\"na\">");
            sb.append(str2.replace("<", "&lt;").replace(">", "&gt;"));
            sb.append("</span><span class=\"ec\">&gt;</span></div>");
        }
        return sb;
    }

    public static StringBuilder k(hbj hbjVar, int i) {
        String str;
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("    ");
        }
        ArrayList arrayList = hbjVar.f19172b;
        ArrayList arrayList2 = hbjVar.f19175e;
        String str2 = hbjVar.h;
        int size = arrayList.size();
        int size2 = arrayList2.size();
        StringBuilder sb2 = new StringBuilder(size2 > 0 ? size2 * 64 : 64);
        if (hbjVar.f19174d == null) {
            sb2.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
        }
        if (hbjVar.f19174d != null && size > 1) {
            sb2.append("\n");
        }
        sb2.append((CharSequence) sb);
        sb2.append("<");
        sb2.append(str2);
        Iterator it = hbjVar.f19172b.iterator();
        while (it.hasNext()) {
            aow aowVar = (aow) it.next();
            if (aowVar != null && (str = aowVar.f10591a) != null && aowVar.f10592b != null) {
                if (size > 1) {
                    sb2.append("\n");
                    sb2.append((CharSequence) sb);
                    sb2.append("    ");
                } else {
                    sb2.append(" ");
                }
                if (!TextUtils.isEmpty(aowVar.f10593c)) {
                    sb2.append(aowVar.f10593c);
                    sb2.append(":");
                }
                sb2.append(str);
                sb2.append("=\"");
                sb2.append(aowVar.f10592b);
                sb2.append("\"");
            }
        }
        if (size2 == 0 && TextUtils.isEmpty(hbjVar.f19173c)) {
            sb2.append("/>");
        } else {
            sb2.append(">");
        }
        if (!TextUtils.isEmpty(hbjVar.f19173c)) {
            sb2.append(hbjVar.f19173c);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            hbj hbjVar2 = (hbj) it2.next();
            if (hbjVar2 != null) {
                sb2.append("\n");
                sb2.append((CharSequence) k(hbjVar2, i + 1));
            }
        }
        if (!TextUtils.isEmpty(hbjVar.f19173c)) {
            awf.a("</", str2, ">", sb2);
        }
        if (size2 != 0) {
            sb2.append("\n");
            sb2.append((CharSequence) sb);
            sb2.append("</");
            sb2.append(str2);
            sb2.append(">");
        }
        return sb2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0057, code lost:
    
        if (r27.f19171a < 800) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String l(CharSequence charSequence, bhc bhcVar) {
        String str;
        String str2;
        String str3;
        String str4;
        String sb;
        StringBuilder sb2;
        String str5;
        String str6;
        bhc bhcVar2;
        boolean z = bhcVar.j;
        String str7 = bhcVar.k;
        int i = bhcVar.f11564b;
        String str8 = bhcVar.h;
        String str9 = bhcVar.f11563a;
        String str10 = bhcVar.o;
        String str11 = bhcVar.i;
        String str12 = bhcVar.f11567e;
        String str13 = bhcVar.f11569g;
        String str14 = bhcVar.n;
        String str15 = bhcVar.l;
        int i2 = bhcVar.f11568f;
        String str16 = bhcVar.m;
        String str17 = "";
        if (z) {
            str2 = "";
            str17 = "word-wrap:break-word;";
            str = str2;
        } else {
            str = "white-space:nowrap;";
            str2 = "";
        }
        int i3 = bhcVar.f11565c;
        str3 = "<div>";
        if (i3 == 0) {
            str4 = "}";
        } else {
            str4 = "}";
        }
        if (i3 != 1) {
            sb = j(this, 0).toString();
            sb2 = new StringBuilder(MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CHLO_COUNT);
            sb2.append("html,body{background:");
            sb2.append(str8);
            sb2.append(";}body{color:");
            sb2.append(str16);
            sb2.append(";font-size:");
            sb2.append(i);
            sb2.append("px;");
            sb2.append(str);
            sb2.append("} .li{margin:0px 0px 0px ");
            sb2.append(i2);
            sb2.append("px;padding:0px;} .pr{margin:0px 0px 0px ");
            sb2.append(i2 * 2);
            sb2.append("px;padding:0px;} .sc{color:");
            str5 = str15;
            sb2.append(str5);
            sb2.append(";} .na{color:");
            awf.y(sb2, str14, ";} .ns{color:", str13, ";} .co{color:");
            awf.y(sb2, str12, ";} .ke{color:", str11, ";} .es{color:");
            awf.y(sb2, str10, ";} .va{color:", str9, ";} .ec{color:");
            awf.y(sb2, str7, ";} .te{color:", str16, ";} span{margin: 0px;");
            sb2.append(str17);
            sb2.append(str4);
            if (str7.equals(str9)) {
                str6 = str2;
                sb = sb.replace("</span><span class=\"ec\">", str6);
            } else {
                str6 = str2;
            }
            if (str9.equals(str10)) {
                sb = sb.replace("</span><span class=\"va\">", str6);
            }
            if (str10.equals(str11)) {
                sb = sb.replace("</span><span class=\"es\">", str6);
            }
            if (str11.equals(str12)) {
                sb = sb.replace("</span><span class=\"ke\">", str6);
            }
            if (str12.equals(str13)) {
                sb = sb.replace("</span><span class=\"co\">", str6);
            }
            if (str13.equals(str14)) {
                sb = sb.replace("</span><span class=\"ns\">", str6);
            }
            if (str14.equals(str5)) {
                sb = sb.replace("</span><span class=\"na\">", str6);
            }
            bhcVar2 = bhcVar;
            String str18 = str3;
            if (bhcVar2.f11566d) {
                awf.a("body{position:relative;counter-reset:line;margin:0;padding:0 12px 12px 3.75em;} .li.line{margin-left:0;} .line:before{counter-increment:line;content:counter(line) '.';position:absolute;left:0;width:3.1em;text-align:right;color:", str5, ";font-family:inherit;font-variant-numeric:tabular-nums;user-select:none;-webkit-user-select:none;}", sb2);
            }
            StringBuilder sb3 = new StringBuilder(sb.length() + charSequence.length() + MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEODECODER_FPS);
            sb3.append("<html lang=\"zh-CN\"><head><title>");
            sb3.append(charSequence);
            sb3.append("</title><meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\"/><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/><style>");
            sb3.append((CharSequence) sb2);
            return awf.r(sb3, "</style></head><body>", str18, sb, "</div></body></html>");
        }
        str3 = bhcVar.f11566d ? "<div>" : "<div class=\"li\">";
        String replace = k(this, 0).toString().replace("<", "&lt;").replace(">", "&gt;").replace(" ", "&nbsp;");
        if (bhcVar.f11566d) {
            sb = "<div class=\"line\">" + replace.replace("\n", "</div><div class=\"line\">") + "</div>";
        } else {
            sb = replace.replace("\n", "<br>");
        }
        sb2 = new StringBuilder(112);
        sb2.append("html,body{background:");
        sb2.append(str8);
        sb2.append(";}body{color:");
        sb2.append(str16);
        sb2.append(";font-size:");
        sb2.append(i);
        sb2.append("px;");
        sb2.append(str);
        sb2.append("} .li{margin:0px 0px 0px " + i2 + "px;padding:0px;");
        sb2.append(str17);
        sb2.append(str4);
        bhcVar2 = bhcVar;
        str5 = str15;
        String str182 = str3;
        if (bhcVar2.f11566d) {
        }
        StringBuilder sb32 = new StringBuilder(sb.length() + charSequence.length() + MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEODECODER_FPS);
        sb32.append("<html lang=\"zh-CN\"><head><title>");
        sb32.append(charSequence);
        sb32.append("</title><meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\"/><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/><style>");
        sb32.append((CharSequence) sb2);
        return awf.r(sb32, "</style></head><body>", str182, sb, "</div></body></html>");
    }

    public final String toString() {
        return k(this, 0).toString();
    }
}
