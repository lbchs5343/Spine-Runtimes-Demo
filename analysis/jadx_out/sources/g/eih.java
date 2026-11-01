package g;

import java.io.File;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class eih extends File {
    int childCount;
    final boolean directory;
    final String extension;
    String formattedDate;
    String formattedGridDate;
    final long modifiedTime;
    final long sizeBytes;
    private final File source;

    public eih(File file) {
        super(file.getPath());
        this.source = file;
        boolean isDirectory = file.isDirectory();
        this.directory = isDirectory;
        this.modifiedTime = file.lastModified();
        this.sizeBytes = isDirectory ? 0L : file.length();
        this.childCount = isDirectory ? -2 : -1;
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        this.extension = (isDirectory || lastIndexOf <= 0) ? "" : name.substring(lastIndexOf + 1).toLowerCase(Locale.ROOT);
    }

    public final int a() {
        try {
            String[] list = this.source.list();
            if (list == null) {
                return -1;
            }
            return list.length;
        } catch (SecurityException unused) {
            return -1;
        }
    }

    @Override // java.io.File
    public final boolean isDirectory() {
        return this.directory;
    }

    @Override // java.io.File
    public final boolean isFile() {
        return !this.directory;
    }

    @Override // java.io.File
    public final long lastModified() {
        return this.modifiedTime;
    }

    @Override // java.io.File
    public final long length() {
        return this.sizeBytes;
    }
}
