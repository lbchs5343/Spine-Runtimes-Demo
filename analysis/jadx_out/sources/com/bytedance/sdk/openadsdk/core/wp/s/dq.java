package com.bytedance.sdk.openadsdk.core.wp.s;

import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.core.wp.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class dq implements d {
    private static volatile dq dq;

    public static dq d() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq() {
        return "ugen_render";
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq(String str) {
        int d2 = com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext()).d(str, 0);
        return (d2 == 0 && (str.equals("h5_render_success") || str.equals("h5_render_fail") || str.equals("native_render_success") || str.equals("native_render_fail"))) ? "0" : String.valueOf(d2);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00fe A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:4:0x0011, B:6:0x0023, B:9:0x00d8, B:11:0x00e0, B:13:0x0191, B:17:0x00e8, B:19:0x00fe, B:20:0x0102, B:22:0x0108, B:24:0x0127, B:27:0x012d, B:38:0x0138, B:30:0x0146, B:33:0x014e, B:41:0x015c, B:43:0x0164, B:44:0x017f, B:45:0x0172, B:46:0x002f, B:48:0x0045, B:49:0x0049, B:51:0x004f, B:53:0x006e, B:56:0x0074, B:67:0x007f, B:59:0x008d, B:62:0x0095, B:70:0x00a3, B:72:0x00ab, B:73:0x00c6, B:74:0x00b9), top: B:3:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0164 A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:4:0x0011, B:6:0x0023, B:9:0x00d8, B:11:0x00e0, B:13:0x0191, B:17:0x00e8, B:19:0x00fe, B:20:0x0102, B:22:0x0108, B:24:0x0127, B:27:0x012d, B:38:0x0138, B:30:0x0146, B:33:0x014e, B:41:0x015c, B:43:0x0164, B:44:0x017f, B:45:0x0172, B:46:0x002f, B:48:0x0045, B:49:0x0049, B:51:0x004f, B:53:0x006e, B:56:0x0074, B:67:0x007f, B:59:0x008d, B:62:0x0095, B:70:0x00a3, B:72:0x00ab, B:73:0x00c6, B:74:0x00b9), top: B:3:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0172 A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:4:0x0011, B:6:0x0023, B:9:0x00d8, B:11:0x00e0, B:13:0x0191, B:17:0x00e8, B:19:0x00fe, B:20:0x0102, B:22:0x0108, B:24:0x0127, B:27:0x012d, B:38:0x0138, B:30:0x0146, B:33:0x014e, B:41:0x015c, B:43:0x0164, B:44:0x017f, B:45:0x0172, B:46:0x002f, B:48:0x0045, B:49:0x0049, B:51:0x004f, B:53:0x006e, B:56:0x0074, B:67:0x007f, B:59:0x008d, B:62:0x0095, B:70:0x00a3, B:72:0x00ab, B:73:0x00c6, B:74:0x00b9), top: B:3:0x0011 }] */
    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(String str, String str2) {
        LinkedHashSet linkedHashSet;
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext());
        synchronized (dq2) {
            try {
                if (!str.equals("h5_render_success")) {
                    if (str.equals("h5_render_fail")) {
                    }
                    if (!str.equals("native_render_success") || str.equals("native_render_fail")) {
                        linkedHashSet = new LinkedHashSet(dq2.d("native_key_render_result_list", new HashSet()));
                        if (linkedHashSet.size() >= 100) {
                            Iterator it = linkedHashSet.iterator();
                            while (it.hasNext()) {
                                String str3 = (String) it.next();
                                if ((System.currentTimeMillis() - Long.parseLong(str3.substring(0, str3.length() - 1))) / 3600000.0d <= 168.0d && linkedHashSet.size() < 100) {
                                    break;
                                }
                                it.remove();
                                if (str3.endsWith("0")) {
                                    dq2.dq("native_render_success", dq2.d("native_render_success", 0) - 1);
                                } else if (str3.endsWith("1")) {
                                    dq2.dq("native_render_fail", dq2.d("native_render_fail", 0) - 1);
                                }
                            }
                        }
                        if (str.equals("native_render_success")) {
                            dq2.dq("native_render_fail", dq2.d("native_render_fail", 0) + 1);
                        } else {
                            dq2.dq("native_render_success", dq2.d("native_render_success", 0) + 1);
                        }
                        linkedHashSet.add(str2);
                        dq2.dq("native_key_render_result_list", new HashSet(new ArrayList(linkedHashSet)));
                    }
                }
                LinkedHashSet linkedHashSet2 = new LinkedHashSet(dq2.d("key_h5_render_result_list", new HashSet()));
                if (linkedHashSet2.size() >= 100) {
                    Iterator it2 = linkedHashSet2.iterator();
                    while (it2.hasNext()) {
                        String str4 = (String) it2.next();
                        if ((System.currentTimeMillis() - Long.parseLong(str4.substring(0, str4.length() - 1))) / 3600000.0d <= 168.0d && linkedHashSet2.size() < 100) {
                            break;
                        }
                        it2.remove();
                        if (str4.endsWith("0")) {
                            dq2.dq("h5_render_success", dq2.d("h5_render_success", 0) - 1);
                        } else if (str4.endsWith("1")) {
                            dq2.dq("h5_render_fail", dq2.d("h5_render_fail", 0) - 1);
                        }
                    }
                }
                if (str.equals("h5_render_success")) {
                    dq2.dq("h5_render_success", dq2.d("h5_render_success", 0) + 1);
                } else {
                    dq2.dq("h5_render_fail", dq2.d("h5_render_fail", 0) + 1);
                }
                linkedHashSet2.add(str2);
                dq2.dq("key_h5_render_result_list", new HashSet(new ArrayList(linkedHashSet2)));
                if (!str.equals("native_render_success")) {
                }
                linkedHashSet = new LinkedHashSet(dq2.d("native_key_render_result_list", new HashSet()));
                if (linkedHashSet.size() >= 100) {
                }
                if (str.equals("native_render_success")) {
                }
                linkedHashSet.add(str2);
                dq2.dq("native_key_render_result_list", new HashSet(new ArrayList(linkedHashSet)));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
