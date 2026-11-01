package g;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class xp extends SimpleFileVisitor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f20305a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f20306b;

    public xp(ArrayList arrayList, ArrayList arrayList2) {
        this.f20305a = arrayList;
        this.f20306b = arrayList2;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult postVisitDirectory(Object obj, IOException iOException) {
        FileVisitResult fileVisitResult;
        this.f20306b.add(cnf.i(obj));
        fileVisitResult = FileVisitResult.CONTINUE;
        return fileVisitResult;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        FileVisitResult fileVisitResult;
        this.f20305a.add(cnf.i(obj));
        fileVisitResult = FileVisitResult.CONTINUE;
        return fileVisitResult;
    }
}
