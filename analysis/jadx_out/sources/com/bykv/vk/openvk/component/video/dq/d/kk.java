package com.bykv.vk.openvk.component.video.dq.d;

import android.net.Uri;
import android.text.TextUtils;
import g.ada;
import g.awf;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class kk {

    /* renamed from: d, reason: collision with root package name */
    public final List<d> f540d;
    public final ox dq;
    public final dq ox;

    public static final class d {

        /* renamed from: d, reason: collision with root package name */
        public final String f541d;
        public final String dq;

        public d(String str, String str2) {
            this.dq = str;
            this.f541d = str2;
        }

        public static d dq(String str) throws p {
            int indexOf = str.indexOf(":");
            if (indexOf == -1) {
                throw new p("request header format error, header: ".concat(str));
            }
            String trim = str.substring(0, indexOf).trim();
            String trim2 = str.substring(indexOf + 1).trim();
            if (trim.length() == 0 || trim2.length() == 0) {
                throw new p("request header format error, header: ".concat(str));
            }
            return new d(trim, trim2);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Header{name='");
            sb.append(this.dq);
            sb.append("', value='");
            return awf.ad(sb, this.f541d, "'}");
        }
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        final String f542d;
        final int dq;
        final String iw;
        final List<String> mn;
        final String ox;
        final int p;
        final int s;

        private dq(int i, String str, String str2, int i2, int i3, String str3, List<String> list) {
            this.dq = i;
            this.f542d = str;
            this.ox = str2;
            this.p = i2;
            this.s = i3;
            this.iw = str3;
            this.mn = list;
        }

        public static dq dq(ox oxVar, List<d> list) throws p {
            String str;
            int i;
            int i2;
            int indexOf = oxVar.f543d.indexOf("?");
            if (indexOf == -1) {
                throw new p("path format error, path: " + oxVar.f543d);
            }
            ArrayList arrayList = new ArrayList();
            String str2 = null;
            String str3 = null;
            String str4 = null;
            int i3 = 0;
            for (String str5 : oxVar.f543d.substring(indexOf + 1).split("&")) {
                String[] split = str5.split("=");
                if (split.length == 2) {
                    if ("rk".equals(split[0])) {
                        str2 = Uri.decode(split[1]);
                    } else if (ada.COLUMN_KEY.equals(split[0])) {
                        str3 = Uri.decode(split[1]);
                    } else if (split[0].startsWith("u")) {
                        arrayList.add(Uri.decode(split[1]));
                    } else if ("f".equals(split[0]) && com.bykv.vk.openvk.component.video.dq.ox.dq.d(split[1]) == 1) {
                        i3 = 1;
                    }
                }
            }
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                throw new p("rawKey or key is empty, path: " + oxVar.f543d);
            }
            if (list != null) {
                int i4 = 0;
                int i5 = 0;
                for (d dVar : list) {
                    if (dVar != null && "Range".equalsIgnoreCase(dVar.dq)) {
                        int indexOf2 = dVar.f541d.indexOf("=");
                        if (indexOf2 == -1) {
                            throw new p("Range format error, Range: " + dVar.f541d);
                        }
                        if (!"bytes".equalsIgnoreCase(dVar.f541d.substring(0, indexOf2).trim())) {
                            throw new p("Range format error, Range: " + dVar.f541d);
                        }
                        String substring = dVar.f541d.substring(indexOf2 + 1);
                        if (substring.contains(",")) {
                            throw new p("Range format error, Range: " + dVar.f541d);
                        }
                        int indexOf3 = substring.indexOf("-");
                        if (indexOf3 == -1) {
                            throw new p("Range format error, Range: " + dVar.f541d);
                        }
                        String trim = substring.substring(0, indexOf3).trim();
                        String trim2 = substring.substring(indexOf3 + 1).trim();
                        try {
                            if (trim.length() > 0) {
                                i4 = Integer.parseInt(trim);
                            }
                            if (trim2.length() > 0 && i4 > (i5 = Integer.parseInt(trim2))) {
                                throw new p("Range format error, Range: " + dVar.f541d);
                            }
                            str4 = dVar.f541d;
                        } catch (NumberFormatException unused) {
                            throw new p("Range format error, Range: " + dVar.f541d);
                        }
                    }
                }
                i = i4;
                str = str4;
                i2 = i5;
            } else {
                str = null;
                i = 0;
                i2 = 0;
            }
            if (!arrayList.isEmpty()) {
                return new dq(i3, str2, str3, i, i2, str, arrayList);
            }
            throw new p("no url found: path: " + oxVar.f543d);
        }

        public String toString() {
            return "Extra{flag=" + this.dq + ", rawKey='" + this.f542d + "', key='" + this.ox + "', from=" + this.p + ", to=" + this.s + ", urls=" + this.mn + '}';
        }
    }

    public static final class ox {

        /* renamed from: d, reason: collision with root package name */
        final String f543d;
        final String dq;
        final String ox;

        private ox(String str, String str2, String str3) {
            this.dq = str;
            this.f543d = str2;
            this.ox = str3;
        }

        public static ox dq(String str) throws p {
            int indexOf = str.indexOf(32);
            if (indexOf == -1) {
                throw new p("request line format error, line: ".concat(str));
            }
            int lastIndexOf = str.lastIndexOf(32);
            if (lastIndexOf <= indexOf) {
                throw new p("request line format error, line: ".concat(str));
            }
            String trim = str.substring(0, indexOf).trim();
            String trim2 = str.substring(indexOf + 1, lastIndexOf).trim();
            String trim3 = str.substring(lastIndexOf + 1).trim();
            if (trim.length() == 0 || trim2.length() == 0 || trim3.length() == 0) {
                throw new p("request line format error, line: ".concat(str));
            }
            return new ox(trim, trim2, trim3);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("RequestLine{method='");
            sb.append(this.dq);
            sb.append("', path='");
            sb.append(this.f543d);
            sb.append("', version='");
            return awf.ad(sb, this.ox, "'}");
        }
    }

    public static final class p extends Exception {
        public p(String str) {
            super(str);
        }
    }

    public kk(ox oxVar, List<d> list, dq dqVar) {
        this.dq = oxVar;
        this.f540d = list;
        this.ox = dqVar;
    }

    public static kk dq(InputStream inputStream) throws IOException, p {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, com.bykv.vk.openvk.component.video.dq.ox.dq.dq));
        ArrayList arrayList = new ArrayList();
        ox oxVar = null;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (TextUtils.isEmpty(readLine)) {
                break;
            }
            String trim = readLine.trim();
            if (oxVar == null) {
                oxVar = ox.dq(trim);
            } else {
                arrayList.add(d.dq(trim));
            }
        }
        if (oxVar != null) {
            return new kk(oxVar, arrayList, dq.dq(oxVar, arrayList));
        }
        throw new p("request line is null");
    }

    public static String dq(String str, String str2, List<String> list) {
        StringBuilder sb = new StringBuilder(512);
        String str3 = null;
        do {
            if (str3 != null) {
                if (list.size() == 1) {
                    return null;
                }
                list.remove(list.size() - 1);
            }
            str3 = dq(sb, str, str2, list);
        } while (str3.length() > 3072);
        return str3;
    }

    private static String dq(StringBuilder sb, String str, String str2, List<String> list) {
        sb.delete(0, sb.length());
        sb.append("rk=");
        sb.append(Uri.encode(str));
        sb.append("&k=");
        sb.append(Uri.encode(str2));
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append("&u");
            sb.append(i);
            sb.append("=");
            sb.append(Uri.encode(list.get(i)));
        }
        return sb.toString();
    }

    public String toString() {
        return "Request{requestLine=" + this.dq + ", headers=" + this.f540d + ", extra=" + this.ox + '}';
    }
}
