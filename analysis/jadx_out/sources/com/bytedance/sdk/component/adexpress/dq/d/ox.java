package com.bytedance.sdk.component.adexpress.dq.d;

import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.component.adexpress.dq.ox.dq;
import com.bytedance.sdk.component.utils.h;
import com.bytedance.sdk.component.utils.ig;
import g.awf;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ox {
    public static void d(File file, com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar, String str) {
        if (dqVar == null || file == null) {
            return;
        }
        try {
            new File(file, str).delete();
        } catch (Throwable unused) {
        }
        if (dqVar.getResources() != null) {
            Iterator<dq.C0104dq> it = dqVar.getResources().iterator();
            while (it.hasNext()) {
                try {
                    new File(file, com.bytedance.sdk.component.utils.s.d(it.next().dq())).delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public static void dq(File file, com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar, String str) {
        FileOutputStream fileOutputStream;
        if (dqVar == null) {
            return;
        }
        String ia = dqVar.ia();
        if (TextUtils.isEmpty(ia)) {
            return;
        }
        File file2 = new File(file, str);
        File file3 = new File(file2 + ".tmp");
        if (file3.exists()) {
            file3.delete();
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file3);
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileOutputStream.write(ia.getBytes("utf-8"));
                if (file2.exists()) {
                    file2.delete();
                }
                file3.renameTo(file2);
                fileOutputStream.close();
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                try {
                    ig.d("PlayComponentEngineCacheManager", "version save error3", th);
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                } catch (Throwable th3) {
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (IOException unused2) {
        }
    }

    @Deprecated
    public static boolean dq(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar, String str) {
        if (dqVar == null) {
            return true;
        }
        try {
            if (TextUtils.isEmpty(dqVar.ox())) {
                return true;
            }
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return dq(dqVar.ox(), str);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0042, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean dq(String str, String str2) {
        String[] split = str2.split("\\.");
        String[] split2 = str.split("\\.");
        int min = Math.min(split.length, split2.length);
        int i = 0;
        while (true) {
            if (i >= min) {
                break;
            }
            int length = split[i].length() - split2[i].length();
            if (length == 0) {
                int compareTo = split[i].compareTo(split2[i]);
                if (compareTo > 0) {
                    return true;
                }
                if (compareTo < 0) {
                    return false;
                }
                if (i == min - 1) {
                    return split.length > split2.length;
                }
                i++;
            } else if (length > 0) {
                return true;
            }
        }
    }

    private boolean dq(List<dq.C0104dq> list, List<dq.C0104dq> list2) {
        for (dq.C0104dq c0104dq : list) {
            String dq = c0104dq.dq();
            String d2 = com.bytedance.sdk.component.utils.s.d(dq);
            File file = new File(dq(), d2);
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
            com.bytedance.sdk.component.kk.d.d p = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().p();
            p.dq(dq);
            p.dq(dq().getAbsolutePath(), d2);
            com.bytedance.sdk.component.kk.d dq2 = p.dq();
            list2.add(c0104dq);
            if (dq2 == null || !dq2.ia() || dq2.mn() == null || !dq2.mn().exists()) {
                ox(list2);
                return false;
            }
        }
        return true;
    }

    private static boolean dq(Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> map, Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> map2) {
        if (map.size() != map2.size()) {
            return true;
        }
        for (String str : map2.keySet()) {
            com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar = map.get(str);
            if (dqVar == null) {
                return true;
            }
            com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar2 = map2.get(str);
            if (dqVar2 == null) {
                return false;
            }
            if (dq(dqVar.ox(), dqVar2.ox())) {
                return true;
            }
        }
        return false;
    }

    public static boolean ox(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar, com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar2) {
        if (dqVar != null) {
            try {
                if (!TextUtils.isEmpty(dqVar.ox())) {
                    if (dqVar2 == null) {
                        return false;
                    }
                    if (dq(dqVar.ox(), dqVar2.ox())) {
                        return true;
                    }
                    Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq = dqVar.dq();
                    Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq2 = dqVar2.dq();
                    if (dq.isEmpty()) {
                        return !dq2.isEmpty();
                    }
                    if (dq2.isEmpty()) {
                        return false;
                    }
                    return dq(dq, dq2);
                }
            } catch (Throwable th) {
                th.getMessage();
                return false;
            }
        }
        return true;
    }

    public List<dq.C0104dq> d(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar, com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<dq.C0104dq> arrayList3 = new ArrayList<>();
        if (dqVar2 == null || dqVar2.getResources().isEmpty()) {
            arrayList2.addAll(dqVar.getResources());
        } else if (dqVar.getResources().isEmpty()) {
            arrayList.addAll(dqVar2.getResources());
        } else {
            for (dq.C0104dq c0104dq : dqVar.getResources()) {
                if (!dqVar2.getResources().contains(c0104dq) && c0104dq != null && c0104dq.dq() != null && c0104dq.d() != null) {
                    arrayList2.add(c0104dq);
                }
            }
            for (dq.C0104dq c0104dq2 : dqVar2.getResources()) {
                if (!dqVar.getResources().contains(c0104dq2)) {
                    arrayList.add(c0104dq2);
                }
            }
        }
        if (dq(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public void d(List<dq.C0104dq> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<dq.C0104dq> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(dq(), com.bytedance.sdk.component.utils.s.d(it.next().dq()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public abstract File dq();

    public List<dq.C0104dq> dq(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar, com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar2) {
        Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq = dqVar.dq();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<dq.C0104dq> arrayList3 = new ArrayList<>();
        if (dq.size() == 0) {
            if (dqVar2 != null && dqVar2.dq().size() != 0) {
                Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq2 = dqVar2.dq();
                Iterator<String> it = dq2.keySet().iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar3 = dq2.get(it.next());
                    if (dqVar3 != null) {
                        arrayList.addAll(dqVar3.getResources());
                    }
                }
            }
        } else if (dqVar2 != null && dqVar2.dq().size() != 0) {
            Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq3 = dqVar2.dq();
            for (String str : dq.keySet()) {
                com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar4 = dq.get(str);
                com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar5 = dq3.get(str);
                if (dqVar5 == null && dqVar4 != null) {
                    arrayList2.addAll(dqVar4.getResources());
                } else if (dqVar4 == null && dqVar5 != null) {
                    arrayList.addAll(dqVar5.getResources());
                } else if (dqVar4 != null) {
                    for (dq.C0104dq c0104dq : dqVar4.getResources()) {
                        if (c0104dq != null && !dqVar5.getResources().contains(c0104dq) && c0104dq.d() != null && c0104dq.dq() != null) {
                            arrayList2.add(c0104dq);
                        }
                    }
                    for (dq.C0104dq c0104dq2 : dqVar5.getResources()) {
                        if (c0104dq2 != null && !dqVar4.getResources().contains(c0104dq2)) {
                            arrayList.add(c0104dq2);
                        }
                    }
                }
            }
        } else if (dq.size() != 0) {
            Iterator<String> it2 = dq.keySet().iterator();
            while (it2.hasNext()) {
                com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar6 = dq.get(it2.next());
                if (dqVar6 != null) {
                    arrayList2.addAll(dqVar6.getResources());
                }
            }
        }
        if (dq(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public void dq(int i) {
        if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().p() != null) {
            com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().p().dq(i);
        }
    }

    public boolean dq(dq.d dVar) {
        if (dVar == null || dq() == null) {
            return false;
        }
        List<Pair<String, String>> d2 = dVar.d();
        if (d2 == null || d2.size() <= 0) {
            return true;
        }
        Iterator<Pair<String, String>> it = d2.iterator();
        while (it.hasNext()) {
            File file = new File(dq(), (String) it.next().first);
            if (!file.exists() || !file.isFile()) {
                return false;
            }
        }
        return true;
    }

    public boolean dq(String str) {
        File file = new File(dq().getAbsoluteFile(), awf.c(com.bytedance.sdk.component.utils.s.d(str), ".zip"));
        com.bytedance.sdk.component.kk.d.d p = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().p();
        p.dq(str);
        p.dq(file.getParent(), file.getName());
        com.bytedance.sdk.component.kk.d dq = p.dq();
        if (dq.ia() && dq.mn() != null && dq.mn().exists()) {
            File mn = dq.mn();
            try {
                h.dq(mn.getAbsolutePath(), file.getParent());
                if (!mn.exists()) {
                    return true;
                }
                mn.delete();
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public boolean dq(List<dq.C0104dq> list) {
        if (list == null || list.size() <= 0 || dq() == null) {
            return false;
        }
        for (dq.C0104dq c0104dq : list) {
            String d2 = com.bytedance.sdk.component.utils.s.d(c0104dq.dq());
            if (TextUtils.isEmpty(d2)) {
                return false;
            }
            File file = new File(dq(), d2);
            String dq = com.bytedance.sdk.component.utils.s.dq(file);
            if (!file.exists() || !file.isFile() || c0104dq.d() == null || !c0104dq.d().equals(dq)) {
                return false;
            }
        }
        return true;
    }

    public boolean dq(Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()) {
            com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar = map.get(it.next());
            if (dqVar != null && !dq(dqVar.getResources())) {
                return false;
            }
        }
        return true;
    }

    public void ox(List<dq.C0104dq> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<dq.C0104dq> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(dq(), com.bytedance.sdk.component.utils.s.d(it.next().dq()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }
}
