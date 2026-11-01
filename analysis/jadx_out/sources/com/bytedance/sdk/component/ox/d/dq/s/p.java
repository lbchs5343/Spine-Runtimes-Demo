package com.bytedance.sdk.component.ox.d.dq.s;

import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.he;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class p {

    /* renamed from: d, reason: collision with root package name */
    static final Map<com.bytedance.sdk.component.ox.dq.iw, Integer> f2101d;
    static final ox[] dq;

    public static final class d {

        /* renamed from: d, reason: collision with root package name */
        int f2102d;
        int dq;
        private final boolean ia;
        int iw;
        private int kk;
        private final com.bytedance.sdk.component.ox.dq.ox mn;
        private boolean o;
        ox[] ox;
        int p;
        int s;

        public d(int i, boolean z, com.bytedance.sdk.component.ox.dq.ox oxVar) {
            this.kk = he.UNDEFINED_ITEM_ID;
            this.ox = new ox[8];
            this.p = r0.length - 1;
            this.s = 0;
            this.iw = 0;
            this.dq = i;
            this.f2102d = i;
            this.ia = z;
            this.mn = oxVar;
        }

        public d(com.bytedance.sdk.component.ox.dq.ox oxVar) {
            this(4096, true, oxVar);
        }

        private int d(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.ox.length;
                while (true) {
                    length--;
                    i2 = this.p;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.ox[length].kk;
                    i -= i4;
                    this.iw -= i4;
                    this.s--;
                    i3++;
                }
                ox[] oxVarArr = this.ox;
                System.arraycopy(oxVarArr, i2 + 1, oxVarArr, i2 + 1 + i3, this.s);
                ox[] oxVarArr2 = this.ox;
                int i5 = this.p;
                Arrays.fill(oxVarArr2, i5 + 1, i5 + 1 + i3, (Object) null);
                this.p += i3;
            }
            return i3;
        }

        private void d() {
            int i = this.f2102d;
            int i2 = this.iw;
            if (i < i2) {
                if (i == 0) {
                    dq();
                } else {
                    d(i2 - i);
                }
            }
        }

        private void dq() {
            Arrays.fill(this.ox, (Object) null);
            this.p = this.ox.length - 1;
            this.s = 0;
            this.iw = 0;
        }

        private void dq(ox oxVar) {
            int i = oxVar.kk;
            int i2 = this.f2102d;
            if (i > i2) {
                dq();
                return;
            }
            d((this.iw + i) - i2);
            int i3 = this.s + 1;
            ox[] oxVarArr = this.ox;
            if (i3 > oxVarArr.length) {
                ox[] oxVarArr2 = new ox[oxVarArr.length * 2];
                System.arraycopy(oxVarArr, 0, oxVarArr2, oxVarArr.length, oxVarArr.length);
                this.p = this.ox.length - 1;
                this.ox = oxVarArr2;
            }
            int i4 = this.p;
            this.p = i4 - 1;
            this.ox[i4] = oxVar;
            this.s++;
            this.iw += i;
        }

        public void dq(int i) {
            this.dq = i;
            int min = Math.min(i, 16384);
            int i2 = this.f2102d;
            if (i2 == min) {
                return;
            }
            if (min < i2) {
                this.kk = Math.min(this.kk, min);
            }
            this.o = true;
            this.f2102d = min;
            d();
        }

        public void dq(int i, int i2, int i3) {
            if (i < i2) {
                this.mn.kk(i | i3);
                return;
            }
            this.mn.kk(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.mn.kk(128 | (i4 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE));
                i4 >>>= 7;
            }
            this.mn.kk(i4);
        }

        public void dq(com.bytedance.sdk.component.ox.dq.iw iwVar) throws IOException {
            if (!this.ia || no.dq().dq(iwVar) >= iwVar.mn()) {
                dq(iwVar.mn(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, 0);
                this.mn.d(iwVar);
                return;
            }
            com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
            no.dq().dq(iwVar, oxVar);
            com.bytedance.sdk.component.ox.dq.iw q = oxVar.q();
            dq(q.mn(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            this.mn.d(q);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void dq(List<ox> list) throws IOException {
            int i;
            int i2;
            if (this.o) {
                int i3 = this.kk;
                if (i3 < this.f2102d) {
                    dq(i3, 31, 32);
                }
                this.o = false;
                this.kk = he.UNDEFINED_ITEM_ID;
                dq(this.f2102d, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                ox oxVar = list.get(i4);
                com.bytedance.sdk.component.ox.dq.iw iw = oxVar.mn.iw();
                com.bytedance.sdk.component.ox.dq.iw iwVar = oxVar.ia;
                Integer num = p.f2101d.get(iw);
                if (num != null) {
                    int intValue = num.intValue();
                    i2 = intValue + 1;
                    if (i2 > 1 && i2 < 8) {
                        ox[] oxVarArr = p.dq;
                        if (com.bytedance.sdk.component.ox.d.dq.ox.dq(oxVarArr[intValue].ia, iwVar)) {
                            i = i2;
                        } else if (com.bytedance.sdk.component.ox.d.dq.ox.dq(oxVarArr[i2].ia, iwVar)) {
                            i2 = intValue + 2;
                            i = i2;
                        }
                        if (i2 == -1) {
                            int i5 = this.p + 1;
                            int length = this.ox.length;
                            while (true) {
                                if (i5 >= length) {
                                    break;
                                }
                                if (com.bytedance.sdk.component.ox.d.dq.ox.dq(this.ox[i5].mn, iw)) {
                                    if (com.bytedance.sdk.component.ox.d.dq.ox.dq(this.ox[i5].ia, iwVar)) {
                                        i2 = (i5 - this.p) + p.dq.length;
                                        break;
                                    } else if (i == -1) {
                                        i = (i5 - this.p) + p.dq.length;
                                    }
                                }
                                i5++;
                            }
                        }
                        if (i2 == -1) {
                            dq(i2, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                        } else if (i == -1) {
                            this.mn.kk(64);
                            dq(iw);
                            dq(iwVar);
                            dq(oxVar);
                        } else if (!iw.dq(ox.dq) || ox.iw.equals(iw)) {
                            dq(i, 63, 64);
                            dq(iwVar);
                            dq(oxVar);
                        } else {
                            dq(i, 15, 0);
                            dq(iwVar);
                        }
                    }
                    i = i2;
                } else {
                    i = -1;
                }
                i2 = -1;
                if (i2 == -1) {
                }
                if (i2 == -1) {
                }
            }
        }
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        int f2103d;
        ox[] dq;
        private int ia;
        private final com.bytedance.sdk.component.ox.dq.s iw;
        private final int mn;
        int ox;
        int p;
        private final List<ox> s;

        public dq(int i, int i2, gh ghVar) {
            this.s = new ArrayList();
            this.dq = new ox[8];
            this.f2103d = r0.length - 1;
            this.ox = 0;
            this.p = 0;
            this.mn = i;
            this.ia = i2;
            this.iw = com.bytedance.sdk.component.ox.dq.ig.dq(ghVar);
        }

        public dq(int i, gh ghVar) {
            this(i, i, ghVar);
        }

        private void d(int i) throws IOException {
            if (mn(i)) {
                this.s.add(p.dq[i]);
                return;
            }
            int ox = ox(i - p.dq.length);
            if (ox >= 0) {
                ox[] oxVarArr = this.dq;
                if (ox <= oxVarArr.length - 1) {
                    this.s.add(oxVarArr[ox]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        private int dq(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.dq.length;
                while (true) {
                    length--;
                    i2 = this.f2103d;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.dq[length].kk;
                    i -= i4;
                    this.p -= i4;
                    this.ox--;
                    i3++;
                }
                ox[] oxVarArr = this.dq;
                System.arraycopy(oxVarArr, i2 + 1, oxVarArr, i2 + 1 + i3, this.ox);
                this.f2103d += i3;
            }
            return i3;
        }

        private void dq(int i, ox oxVar) {
            this.s.add(oxVar);
            int i2 = oxVar.kk;
            if (i != -1) {
                i2 -= this.dq[ox(i)].kk;
            }
            int i3 = this.ia;
            if (i2 > i3) {
                s();
                return;
            }
            int dq = dq((this.p + i2) - i3);
            if (i == -1) {
                int i4 = this.ox + 1;
                ox[] oxVarArr = this.dq;
                if (i4 > oxVarArr.length) {
                    ox[] oxVarArr2 = new ox[oxVarArr.length * 2];
                    System.arraycopy(oxVarArr, 0, oxVarArr2, oxVarArr.length, oxVarArr.length);
                    this.f2103d = this.dq.length - 1;
                    this.dq = oxVarArr2;
                }
                int i5 = this.f2103d;
                this.f2103d = i5 - 1;
                this.dq[i5] = oxVar;
                this.ox++;
            } else {
                this.dq[ox(i) + dq + i] = oxVar;
            }
            this.p += i2;
        }

        private int ia() throws IOException {
            return this.iw.ia() & 255;
        }

        private com.bytedance.sdk.component.ox.dq.iw iw(int i) {
            return mn(i) ? p.dq[i].mn : this.dq[ox(i - p.dq.length)].mn;
        }

        private void iw() throws IOException {
            this.s.add(new ox(p.dq(ox()), ox()));
        }

        private void mn() throws IOException {
            dq(-1, new ox(p.dq(ox()), ox()));
        }

        private boolean mn(int i) {
            return i >= 0 && i <= p.dq.length - 1;
        }

        private int ox(int i) {
            return this.f2103d + 1 + i;
        }

        private void p() {
            int i = this.ia;
            int i2 = this.p;
            if (i < i2) {
                if (i == 0) {
                    s();
                } else {
                    dq(i2 - i);
                }
            }
        }

        private void p(int i) throws IOException {
            this.s.add(new ox(iw(i), ox()));
        }

        private void s() {
            Arrays.fill(this.dq, (Object) null);
            this.f2103d = this.dq.length - 1;
            this.ox = 0;
            this.p = 0;
        }

        private void s(int i) throws IOException {
            dq(-1, new ox(iw(i), ox()));
        }

        public List<ox> d() {
            ArrayList arrayList = new ArrayList(this.s);
            this.s.clear();
            return arrayList;
        }

        public int dq(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int ia = ia();
                if ((ia & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0) {
                    return i2 + (ia << i4);
                }
                i2 += (ia & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) << i4;
                i4 += 7;
            }
        }

        public void dq() throws IOException {
            while (!this.iw.s()) {
                byte ia = this.iw.ia();
                int i = ia & 255;
                if (i == 128) {
                    throw new IOException("index == 0");
                }
                if ((ia & 128) == 128) {
                    d(dq(i, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) - 1);
                } else if (i == 64) {
                    mn();
                } else if ((ia & 64) == 64) {
                    s(dq(i, 63) - 1);
                } else if ((ia & 32) == 32) {
                    int dq = dq(i, 31);
                    this.ia = dq;
                    if (dq < 0 || dq > this.mn) {
                        throw new IOException("Invalid dynamic table size update " + this.ia);
                    }
                    p();
                } else if (i == 16 || i == 0) {
                    iw();
                } else {
                    p(dq(i, 15) - 1);
                }
            }
        }

        public com.bytedance.sdk.component.ox.dq.iw ox() throws IOException {
            int ia = ia();
            boolean z = (ia & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 128;
            int dq = dq(ia, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
            return z ? com.bytedance.sdk.component.ox.dq.iw.dq(no.dq().dq(this.iw.mn(dq))) : this.iw.ox(dq);
        }
    }

    static {
        ox oxVar = new ox(ox.iw, "");
        com.bytedance.sdk.component.ox.dq.iw iwVar = ox.ox;
        ox oxVar2 = new ox(iwVar, "GET");
        ox oxVar3 = new ox(iwVar, "POST");
        com.bytedance.sdk.component.ox.dq.iw iwVar2 = ox.p;
        ox oxVar4 = new ox(iwVar2, "/");
        ox oxVar5 = new ox(iwVar2, "/index.html");
        com.bytedance.sdk.component.ox.dq.iw iwVar3 = ox.s;
        ox oxVar6 = new ox(iwVar3, "http");
        ox oxVar7 = new ox(iwVar3, "https");
        com.bytedance.sdk.component.ox.dq.iw iwVar4 = ox.f2100d;
        dq = new ox[]{oxVar, oxVar2, oxVar3, oxVar4, oxVar5, oxVar6, oxVar7, new ox(iwVar4, "200"), new ox(iwVar4, "204"), new ox(iwVar4, "206"), new ox(iwVar4, "304"), new ox(iwVar4, "400"), new ox(iwVar4, "404"), new ox(iwVar4, "500"), new ox("accept-charset", ""), new ox("accept-encoding", "gzip, deflate"), new ox("accept-language", ""), new ox("accept-ranges", ""), new ox("accept", ""), new ox("access-control-allow-origin", ""), new ox("age", ""), new ox("allow", ""), new ox("authorization", ""), new ox("cache-control", ""), new ox("content-disposition", ""), new ox("content-encoding", ""), new ox("content-language", ""), new ox("content-length", ""), new ox("content-location", ""), new ox("content-range", ""), new ox("content-type", ""), new ox("cookie", ""), new ox("date", ""), new ox("etag", ""), new ox("expect", ""), new ox("expires", ""), new ox("from", ""), new ox("host", ""), new ox("if-match", ""), new ox("if-modified-since", ""), new ox("if-none-match", ""), new ox("if-range", ""), new ox("if-unmodified-since", ""), new ox("last-modified", ""), new ox("link", ""), new ox("location", ""), new ox("max-forwards", ""), new ox("proxy-authenticate", ""), new ox("proxy-authorization", ""), new ox("range", ""), new ox("referer", ""), new ox("refresh", ""), new ox("retry-after", ""), new ox("server", ""), new ox("set-cookie", ""), new ox("strict-transport-security", ""), new ox("transfer-encoding", ""), new ox("user-agent", ""), new ox("vary", ""), new ox("via", ""), new ox("www-authenticate", "")};
        f2101d = dq();
    }

    public static com.bytedance.sdk.component.ox.dq.iw dq(com.bytedance.sdk.component.ox.dq.iw iwVar) throws IOException {
        int mn = iwVar.mn();
        for (int i = 0; i < mn; i++) {
            byte dq2 = iwVar.dq(i);
            if (dq2 >= 65 && dq2 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + iwVar.dq());
            }
        }
        return iwVar;
    }

    private static Map<com.bytedance.sdk.component.ox.dq.iw, Integer> dq() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(dq.length);
        int i = 0;
        while (true) {
            ox[] oxVarArr = dq;
            if (i >= oxVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(oxVarArr[i].mn)) {
                linkedHashMap.put(oxVarArr[i].mn, Integer.valueOf(i));
            }
            i++;
        }
    }
}
