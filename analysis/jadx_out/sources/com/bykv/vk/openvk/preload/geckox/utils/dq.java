package com.bykv.vk.openvk.preload.geckox.utils;

import android.database.Cursor;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public class dq {
    public static boolean dq(Cursor cursor) {
        if (cursor == null) {
            return true;
        }
        try {
            cursor.close();
            return true;
        } catch (Exception e2) {
            com.bykv.vk.openvk.preload.geckox.no.d.d("gecko-debug-tag", "close:", e2);
            return false;
        }
    }

    public static boolean dq(Closeable closeable) {
        if (closeable == null) {
            return true;
        }
        try {
            closeable.close();
            return true;
        } catch (IOException e2) {
            com.bykv.vk.openvk.preload.geckox.no.d.d("gecko-debug-tag", "close:", e2);
            return false;
        }
    }
}
