package com.bykv.vk.openvk.preload.geckox.dq;

import com.bykv.vk.openvk.preload.geckox.utils.iw;
import com.bykv.vk.openvk.preload.geckox.utils.o;
import com.bykv.vk.openvk.preload.geckox.utils.p;
import g.awf;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ox {
    public static boolean d(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            String str2 = File.separator;
            sb.append(str2);
            sb.append("update.lock");
            com.bykv.vk.openvk.preload.geckox.mn.dq dq = com.bykv.vk.openvk.preload.geckox.mn.dq.dq(sb.toString());
            if (dq == null) {
                return true;
            }
            try {
                com.bykv.vk.openvk.preload.geckox.mn.d dq2 = com.bykv.vk.openvk.preload.geckox.mn.d.dq(str + str2 + "select.lock");
                try {
                    p.ox(new File(str));
                } catch (Throwable unused) {
                }
                dq2.dq();
                return true;
            } finally {
                dq.dq();
            }
        } catch (Throwable unused2) {
            return false;
        }
    }

    private static List<File> dq(File[] fileArr) {
        long j;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        File file = null;
        long j2 = -1;
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (name.endsWith("--updating")) {
                arrayList.add(file2);
            } else if (name.endsWith("--pending-delete")) {
                dq(file2);
            } else {
                try {
                    long parseLong = Long.parseLong(name);
                    if (parseLong > j2) {
                        if (file != null) {
                            try {
                                arrayList2.add(file);
                            } catch (Exception unused) {
                                j2 = parseLong;
                                dq(file2);
                            }
                        }
                        file = file2;
                        j2 = parseLong;
                    } else {
                        arrayList2.add(file2);
                    }
                } catch (Exception unused2) {
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file3 = (File) it.next();
            String name2 = file3.getName();
            int indexOf = name2.indexOf("--updating");
            if (indexOf == -1) {
                dq(file3);
            } else {
                try {
                    j = Long.parseLong(name2.substring(0, indexOf));
                } catch (NumberFormatException e2) {
                    e2.printStackTrace();
                    j = -1;
                }
                if (j <= j2) {
                    dq(file3);
                }
            }
        }
        return arrayList2;
    }

    private static void dq(final File file) {
        iw.dq().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.dq.ox.3
            @Override // java.lang.Runnable
            public final void run() {
                p.dq(file);
            }
        });
    }

    public static void dq(final String str) {
        o.dq().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.dq.ox.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ox.ox(str);
                } catch (Throwable th) {
                    com.bykv.vk.openvk.preload.geckox.utils.ox.dq(new RuntimeException("delete old channel version failed，path：" + str, th));
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0063 A[Catch: all -> 0x004d, LOOP:0: B:21:0x005d->B:23:0x0063, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x004d, blocks: (B:8:0x0030, B:10:0x0040, B:12:0x0043, B:15:0x0048, B:17:0x0052, B:20:0x0059, B:21:0x005d, B:23:0x0063), top: B:7:0x0030, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void ox(String str) throws Exception {
        List<File> list;
        Iterator<File> it;
        StringBuilder o = awf.o(str);
        String str2 = File.separator;
        o.append(str2);
        o.append("update.lock");
        com.bykv.vk.openvk.preload.geckox.mn.dq dq = com.bykv.vk.openvk.preload.geckox.mn.dq.dq(o.toString());
        if (dq != null) {
            try {
                com.bykv.vk.openvk.preload.geckox.mn.d dq2 = com.bykv.vk.openvk.preload.geckox.mn.d.dq(str + str2 + "select.lock");
                try {
                    File[] listFiles = new File(str).listFiles(new FileFilter() { // from class: com.bykv.vk.openvk.preload.geckox.dq.ox.2
                        @Override // java.io.FileFilter
                        public final boolean accept(File file) {
                            return file.isDirectory();
                        }
                    });
                    if (listFiles != null && listFiles.length != 0 && listFiles.length != 1) {
                        list = dq(listFiles);
                        if (list != null && !list.isEmpty()) {
                            it = list.iterator();
                            while (it.hasNext()) {
                                com.bykv.vk.openvk.preload.geckox.mn.ox.d(it.next().getAbsolutePath() + File.separator + "using.lock");
                            }
                            dq2.dq();
                        }
                    }
                    list = null;
                    if (list != null) {
                        it = list.iterator();
                        while (it.hasNext()) {
                        }
                        dq2.dq();
                    }
                } finally {
                    dq2.dq();
                }
            } finally {
                dq.dq();
            }
        }
    }
}
