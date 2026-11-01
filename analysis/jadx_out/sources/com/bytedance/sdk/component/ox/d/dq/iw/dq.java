package com.bytedance.sdk.component.ox.d.dq.iw;

import com.bytedance.sdk.component.ox.dq.cd;
import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.component.ox.dq.ig;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public interface dq {
    public static final dq dq = new dq() { // from class: com.bytedance.sdk.component.ox.d.dq.iw.dq.1
        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public cd d(File file) throws FileNotFoundException {
            try {
                return ig.d(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return ig.d(file);
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public void delete(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete ".concat(String.valueOf(file)));
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public gh dq(File file) throws FileNotFoundException {
            return ig.dq(file);
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public void dq(File file, File file2) throws IOException {
            delete(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public void iw(File file) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
            }
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    iw(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete ".concat(String.valueOf(file2)));
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public cd ox(File file) throws FileNotFoundException {
            try {
                return ig.ox(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return ig.ox(file);
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public boolean p(File file) {
            return file.exists();
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.iw.dq
        public long s(File file) {
            return file.length();
        }
    };

    cd d(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    gh dq(File file) throws FileNotFoundException;

    void dq(File file, File file2) throws IOException;

    void iw(File file) throws IOException;

    cd ox(File file) throws FileNotFoundException;

    boolean p(File file);

    long s(File file);
}
