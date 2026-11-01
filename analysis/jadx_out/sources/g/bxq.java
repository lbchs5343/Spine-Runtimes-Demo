package g;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class bxq implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Path path = (Path) obj;
        try {
            Files.delete(path);
        } catch (Exception e2) {
            bqu.f12045c.t(path.toAbsolutePath(), "Failed to delete file {}", e2);
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
