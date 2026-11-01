package com.bykv.vk.openvk.preload.geckox.utils;

import g.tn;
import java.io.File;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public class BsPatch {
    static {
        System.loadLibrary("geckox_bspatch");
    }

    public static void dq(File file, File file2, File file3, String str) throws Exception {
        if (!file.exists()) {
            throw new FileNotFoundException("full package not exist：" + file.getAbsolutePath());
        }
        if (!file2.exists()) {
            throw new FileNotFoundException("patch package not exist：" + file2.getAbsolutePath());
        }
        file3.mkdirs();
        File file4 = new File(file3, str);
        file4.delete();
        int patch = patch(file.getAbsolutePath(), file4.getAbsolutePath(), file2.getAbsolutePath());
        if (patch == 0) {
            return;
        }
        StringBuilder z = tn.z(patch, "patch merged failed, code：", " full:");
        z.append(file.getAbsolutePath());
        z.append(" patch:");
        z.append(file2.getAbsolutePath());
        z.append(" dest:");
        z.append(file4.getAbsolutePath());
        throw new RuntimeException(z.toString());
    }

    private static native int patch(String str, String str2, String str3) throws Exception;
}
