.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "NxtDirectCommands"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 763
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 764
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 765
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, -0x7c

    aput-byte v6, v4, v5

    .line 766
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 767
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v2, v4

    .line 768
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    .line 769
    return-void
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .prologue
    .line 773
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "DeleteFile"

    move-object v2, v4

    .line 774
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 775
    .line 789
    :goto_0
    return-void

    .line 777
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 778
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x196

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 780
    goto :goto_0

    .line 783
    :cond_1
    const/16 v4, 0x16

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 784
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 785
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, -0x7b

    aput-byte v6, v4, v5

    .line 786
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x2

    const/16 v8, 0x13

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 787
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v1, v4

    .line 788
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    .line 789
    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .prologue
    .line 662
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const-string/jumbo v18, "DownloadFile"

    move-object/from16 v5, v18

    .line 663
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 664
    .line 711
    :goto_0
    return-void

    .line 666
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    .line 667
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/16 v21, 0x19e

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 669
    goto :goto_0

    .line 671
    :cond_1
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2

    .line 672
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/16 v21, 0x19f

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 674
    goto :goto_0

    .line 678
    :cond_2
    move-object/from16 v18, v2

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    move-object/from16 v3, v18

    .line 680
    :try_start_1
    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v20

    const/16 v21, 0x400

    invoke-direct/range {v19 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v6, v18

    .line 682
    move-object/from16 v18, v3

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 683
    move-object/from16 v18, v4

    const-string/jumbo v19, ".rxe"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v18, v4

    const-string/jumbo v19, ".ric"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    .line 684
    move-object/from16 v14, v20

    move-object/from16 v11, v19

    move-object/from16 v10, v18

    .line 1848
    const/16 v18, 0x1a

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 1849
    move-object/from16 v15, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    .line 1850
    move-object/from16 v18, v15

    const/16 v19, 0x1

    const/16 v20, -0x77

    aput-byte v20, v18, v19

    .line 1851
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v21, 0x2

    const/16 v22, 0x13

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 1852
    move-object/from16 v18, v10

    move-wide/from16 v19, v8

    move-object/from16 v21, v15

    const/16 v22, 0x16

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 1853
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v18

    move-object/from16 v14, v18

    .line 1854
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    const/16 v22, 0x1

    aget-byte v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1855
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1856
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v18

    .line 685
    :goto_1
    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 686
    move-object/from16 v4, v19

    if-nez v18, :cond_9

    .line 703
    move-object/from16 v18, v6

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 706
    move-object/from16 v18, v3

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v18

    .line 687
    goto/16 :goto_0

    .line 1858
    :cond_4
    move-object/from16 v18, v10

    :try_start_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": unexpected return package length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " (expected 4)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1862
    :cond_5
    const/16 v18, 0x0

    .line 684
    goto :goto_1

    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    .line 685
    move-object/from16 v14, v20

    move-object/from16 v11, v19

    move-object/from16 v10, v18

    .line 2716
    const/16 v18, 0x1a

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 2717
    move-object/from16 v15, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    .line 2718
    move-object/from16 v18, v15

    const/16 v19, 0x1

    const/16 v20, -0x7f

    aput-byte v20, v18, v19

    .line 2719
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v21, 0x2

    const/16 v22, 0x13

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 2720
    move-object/from16 v18, v10

    move-wide/from16 v19, v8

    move-object/from16 v21, v15

    const/16 v22, 0x16

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 2721
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v18

    move-object/from16 v14, v18

    .line 2722
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    const/16 v22, 0x1

    aget-byte v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2723
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2724
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_1

    .line 2726
    :cond_7
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": unexpected return package length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " (expected 4)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v18

    .line 2730
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 691
    :cond_9
    const/16 v18, 0x20

    :try_start_6
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 692
    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    .line 693
    :goto_2
    move-wide/from16 v18, v12

    move-wide/from16 v20, v8

    cmp-long v18, v18, v20

    if-gez v18, :cond_e

    .line 694
    const-wide/16 v18, 0x20

    move-wide/from16 v20, v8

    move-wide/from16 v22, v12

    sub-long v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 695
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/16 v20, 0x0

    move/from16 v21, v10

    invoke-virtual/range {v18 .. v21}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    .line 696
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v21, v7

    move/from16 v22, v10

    move/from16 v17, v22

    move-object/from16 v16, v21

    move/from16 v14, v20

    move-object/from16 v11, v19

    move-object/from16 v10, v18

    .line 2735
    move/from16 v18, v17

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 2736
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    const-string/jumbo v20, "length must be <= 32"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 700
    :catchall_0
    move-exception v18

    move-object/from16 v7, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)V

    .line 701
    move-object/from16 v18, v7

    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 703
    :catchall_1
    move-exception v18

    move-object/from16 v4, v18

    move-object/from16 v18, v6

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 704
    move-object/from16 v18, v4

    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 706
    :catchall_2
    move-exception v18

    move-object/from16 v4, v18

    move-object/from16 v18, v3

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v18

    .line 707
    move-object/from16 v18, v4

    throw v18
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 708
    :catch_0
    move-exception v18

    move-object/from16 v3, v18

    .line 709
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/16 v21, 0x1a0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v27, v25

    move-object/from16 v25, v27

    move-object/from16 v26, v27

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    .line 710
    invoke-virtual/range {v26 .. v26}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 709
    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 711
    goto/16 :goto_0

    .line 2739
    :cond_a
    move/from16 v18, v17

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    :try_start_a
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 2740
    move-object/from16 v15, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    .line 2741
    move-object/from16 v18, v15

    const/16 v19, 0x1

    const/16 v20, -0x7d

    aput-byte v20, v18, v19

    .line 2742
    move-object/from16 v18, v10

    move/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v21, 0x2

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 2743
    move-object/from16 v18, v16

    const/16 v19, 0x0

    move-object/from16 v20, v15

    const/16 v21, 0x3

    move/from16 v22, v17

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2744
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v18

    move-object/from16 v14, v18

    .line 2745
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    const/16 v22, 0x1

    aget-byte v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2746
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2747
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v18

    move/from16 v27, v18

    move/from16 v18, v27

    move/from16 v19, v27

    .line 2748
    move/from16 v14, v19

    move/from16 v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 2749
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": only "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " bytes were written (expected "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 2751
    new-instance v18, Ljava/io/IOException;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    const-string/jumbo v20, "Unable to write file on robot"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2753
    :cond_b
    move/from16 v18, v14

    .line 696
    :goto_3
    move/from16 v10, v18

    .line 697
    move-wide/from16 v18, v12

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 698
    goto/16 :goto_2

    .line 2755
    :cond_c
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": unexpected return package length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " (expected 6)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v18

    .line 2759
    :cond_d
    const/16 v18, 0x0

    goto :goto_3

    .line 700
    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 701
    .line 703
    move-object/from16 v18, v6

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 704
    .line 706
    move-object/from16 v18, v3

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    move-result v18

    .line 707
    goto/16 :goto_0
.end method

.method public GetBatteryLevel()I
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    const-string/jumbo v4, "GetBatteryLevel"

    move-object v1, v4

    .line 370
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    const/4 v4, 0x0

    move v0, v4

    .line 386
    :goto_0
    return v0

    .line 374
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 375
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 376
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, 0xb

    aput-byte v6, v4, v5

    .line 377
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 378
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 380
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 382
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "GetBatteryLevel: unexpected return package length "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 386
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .prologue
    .line 886
    move-object v0, p0

    const-string/jumbo v4, "GetBrickName"

    move-object v1, v4

    .line 887
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 888
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 898
    :goto_0
    return-object v0

    .line 891
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 892
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 893
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, -0x65

    aput-byte v6, v4, v5

    .line 894
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 895
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 896
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 898
    :cond_1
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    const-string/jumbo v5, "GetCurrentProgramName"

    move-object v1, v5

    .line 530
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 531
    const-string/jumbo v5, ""

    move-object v0, v5

    .line 549
    :goto_0
    return-object v0

    .line 534
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [B

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 535
    move-object v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    .line 536
    move-object v5, v2

    const/4 v6, 0x1

    const/16 v7, 0x11

    aput-byte v7, v5, v6

    .line 537
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    move-object v3, v5

    .line 538
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v5

    move v10, v5

    move v5, v10

    move v6, v10

    .line 539
    move v4, v6

    if-nez v5, :cond_1

    .line 541
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 543
    :cond_1
    move v5, v4

    const/16 v6, 0xec

    if-ne v5, v6, :cond_2

    .line 545
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0

    .line 548
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    .line 549
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 829
    move-object v0, p0

    const-string/jumbo v4, "GetFirmwareVersion"

    move-object v1, v4

    .line 830
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 831
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 844
    :goto_0
    return-object v0

    .line 834
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 835
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 836
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, -0x78

    aput-byte v6, v4, v5

    .line 837
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 838
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 840
    move-object v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    const/4 v7, 0x6

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 841
    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    const/4 v7, 0x4

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 842
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    .line 844
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "GetInputValues"

    move-object v2, v4

    .line 290
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 317
    :goto_0
    return-object v0

    .line 295
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v4

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 296
    move-object v3, v5

    if-nez v4, :cond_1

    .line 297
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x198

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 299
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto :goto_0

    .line 302
    :cond_1
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v4

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 303
    move-object v1, v5

    if-eqz v4, :cond_2

    .line 304
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 305
    move-object v2, v5

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 306
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 307
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 308
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 309
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 310
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 311
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0xc

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 312
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0xe

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 313
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 317
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v5, "GetOutputState"

    move-object v2, v5

    .line 238
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 266
    :goto_0
    return-object v0

    .line 243
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v5

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 244
    move-object v3, v6

    if-nez v5, :cond_1

    .line 245
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x197

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    goto :goto_0

    .line 250
    :cond_1
    move-object v5, v0

    move-object v1, v5

    .line 1270
    const/4 v5, 0x3

    new-array v5, v5, [B

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 1271
    move-object v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    .line 1272
    move-object v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x6

    aput-byte v7, v5, v6

    .line 1273
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v6}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v4

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 1274
    move-object v5, v1

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    move-object v3, v5

    .line 1275
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1276
    move-object v5, v3

    array-length v5, v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_2

    .line 1277
    move-object v5, v3

    .line 250
    :goto_1
    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 251
    move-object v1, v6

    if-eqz v5, :cond_4

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 253
    move-object v2, v6

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 254
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 255
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 256
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 257
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 258
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x9

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 259
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0xd

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 260
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x11

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 261
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x15

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 262
    move-object v5, v2

    move-object v0, v5

    goto/16 :goto_0

    .line 1279
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (expected 25)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1283
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 266
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    const-string/jumbo v4, "KeepAlive"

    move-object v1, v4

    .line 406
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 407
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 422
    :goto_0
    return-wide v0

    .line 410
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 411
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 412
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, 0xd

    aput-byte v6, v4, v5

    .line 413
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 414
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 415
    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 416
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 418
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "KeepAlive: unexpected return package length "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 7)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 422
    :cond_2
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v6, "ListFiles"

    move-object v2, v6

    .line 795
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 796
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 822
    :goto_0
    return-object v0

    .line 799
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 801
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 802
    const-string/jumbo v6, "*.*"

    move-object v1, v6

    .line 805
    :cond_1
    const/16 v6, 0x16

    new-array v6, v6, [B

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 806
    move-object v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    .line 807
    move-object v6, v4

    const/4 v7, 0x1

    const/16 v8, -0x7a

    aput-byte v8, v6, v7

    .line 808
    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    const/4 v9, 0x2

    const/16 v10, 0x13

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 809
    move-object v6, v0

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v6

    move-object v1, v6

    .line 810
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, v4

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    move v4, v6

    .line 811
    :goto_1
    move v6, v4

    if-nez v6, :cond_2

    .line 812
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    move v5, v6

    .line 813
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 814
    move-object v6, v3

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 815
    const/4 v6, 0x3

    new-array v6, v6, [B

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 816
    move-object v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    .line 817
    move-object v6, v4

    const/4 v7, 0x1

    const/16 v8, -0x79

    aput-byte v8, v6, v7

    .line 818
    move-object v6, v0

    move v7, v5

    move-object v8, v4

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 819
    move-object v6, v0

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v6

    move-object v1, v6

    .line 820
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, v4

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    move v4, v6

    .line 821
    goto :goto_1

    .line 822
    :cond_2
    move-object v6, v3

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "LsGetStatus"

    move-object v2, v4

    .line 428
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    const/4 v4, 0x0

    move v0, v4

    .line 440
    :goto_0
    return v0

    .line 433
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v4

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 434
    move-object v3, v5

    if-nez v4, :cond_1

    .line 435
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x198

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 437
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 440
    :cond_1
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v6, "LsRead"

    move-object v2, v6

    .line 499
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 500
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 523
    :goto_0
    return-object v0

    .line 504
    :cond_0
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 505
    move-object v3, v7

    if-nez v6, :cond_1

    .line 506
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v2

    const/16 v9, 0x198

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 508
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    goto :goto_0

    .line 511
    :cond_1
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 512
    move-object v1, v7

    if-eqz v6, :cond_3

    .line 513
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 514
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    move v3, v6

    .line 515
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 516
    move-object v6, v1

    move v7, v4

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v5, v6

    .line 517
    move-object v6, v2

    move v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 515
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 519
    :cond_2
    move-object v6, v2

    move-object v0, v6

    goto :goto_0

    .line 523
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .prologue
    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v8, "LsWrite"

    move-object v4, v8

    .line 450
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 451
    .line 492
    :goto_0
    return-void

    .line 455
    :cond_0
    move-object v8, v1

    invoke-static {v8}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v8

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    .line 456
    move-object v5, v9

    if-nez v8, :cond_1

    .line 457
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x198

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v1

    aput-object v15, v13, v14

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 459
    goto :goto_0

    .line 462
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    const/16 v9, 0x10

    if-le v8, v9, :cond_2

    .line 463
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x19b

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 465
    goto :goto_0

    .line 468
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    .line 469
    move-object v1, v9

    array-length v8, v8

    new-array v8, v8, [B

    move-object v2, v8

    .line 470
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 473
    move-object v8, v1

    move v9, v6

    aget-object v8, v8, v9

    .line 474
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 477
    move-object v8, v7

    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    move v7, v8

    .line 482
    .line 483
    move-object v8, v2

    move v9, v6

    move v10, v7

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 484
    move v8, v7

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    move/from16 v17, v8

    move/from16 v8, v17

    move/from16 v9, v17

    .line 485
    move v7, v9

    if-eqz v8, :cond_3

    move v8, v7

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 486
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x19d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 487
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 486
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 488
    goto/16 :goto_0

    .line 479
    :catch_0
    move-exception v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x19c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 480
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 479
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 481
    goto/16 :goto_0

    .line 470
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 491
    :cond_4
    move-object v8, v0

    move-object v9, v4

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    .line 492
    goto/16 :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 13
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMailbox;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    .line 554
    move-object v0, p0

    move v1, p1

    const-string/jumbo v4, "MessageRead"

    move-object v2, v4

    .line 556
    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/common/NxtMailbox;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v4

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 557
    move-object v3, v5

    if-nez v4, :cond_0

    .line 558
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x199

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    .line 559
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 558
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 560
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 562
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->MessageReadAbstract(Lcom/google/appinventor/components/common/NxtMailbox;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public MessageReadAbstract(Lcom/google/appinventor/components/common/NxtMailbox;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/NxtMailbox;->toInt()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    .line 576
    move-object v4, v0

    const-string/jumbo v5, "MessageRead"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 577
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 601
    :goto_0
    return-object v0

    .line 580
    :cond_0
    const/4 v4, 0x5

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 581
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 582
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, 0x13

    aput-byte v6, v4, v5

    .line 583
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 584
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 585
    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v2

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 586
    move-object v4, v0

    const-string/jumbo v5, "MessageRead"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 587
    move-object v4, v0

    const-string/jumbo v5, "MessageRead"

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 588
    move-object v4, v3

    array-length v4, v4

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 589
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    move v9, v4

    move v4, v9

    move v5, v9

    .line 590
    move v2, v5

    move v5, v1

    if-eq v4, v5, :cond_1

    .line 591
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "MessageRead: unexpected return mailbox: Box"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 594
    :cond_1
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    .line 595
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x5

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 597
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "MessageRead: unexpected return package length "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 64)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 601
    :cond_3
    const-string/jumbo v4, ""

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 14
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMailbox;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    .line 612
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v5, "MessageWrite"

    move-object v3, v5

    .line 614
    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/common/NxtMailbox;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v5

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 615
    move-object v4, v6

    if-nez v5, :cond_0

    .line 616
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v3

    const/16 v8, 0x199

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v1

    .line 617
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 616
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 618
    .line 621
    :goto_0
    return-void

    .line 620
    :cond_0
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->MessageWriteAbstract(Lcom/google/appinventor/components/common/NxtMailbox;Ljava/lang/String;)V

    .line 621
    goto :goto_0
.end method

.method public MessageWriteAbstract(Lcom/google/appinventor/components/common/NxtMailbox;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    const-string/jumbo v6, "MessageWrite"

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 634
    .line 652
    :goto_0
    return-void

    .line 636
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v10, v5

    move v5, v10

    move v6, v10

    .line 637
    move v3, v6

    const/16 v6, 0x3a

    if-le v5, v6, :cond_1

    .line 638
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    const-string/jumbo v7, "MessageWrite"

    const/16 v8, 0x19a

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 640
    goto :goto_0

    .line 643
    :cond_1
    move v5, v3

    const/4 v6, 0x4

    add-int/lit8 v5, v5, 0x4

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [B

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 644
    move-object v4, v6

    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v5, v6

    .line 645
    move-object v5, v4

    const/4 v6, 0x1

    const/16 v7, 0x9

    aput-byte v7, v5, v6

    .line 646
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/common/NxtMailbox;->toInt()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v4

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 648
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v4

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 649
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    const/4 v8, 0x4

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 651
    move-object v5, v0

    const-string/jumbo v6, "MessageWrite"

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 652
    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "PlaySoundFile"

    move-object v2, v4

    .line 103
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    .line 121
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 107
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x196

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 109
    goto :goto_0

    .line 111
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".rso"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 115
    :cond_2
    const/16 v4, 0x17

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 116
    move-object v3, v5

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 117
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x2

    aput-byte v6, v4, v5

    .line 118
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 119
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x3

    const/16 v8, 0x13

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 120
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 121
    goto :goto_0
.end method

.method public PlayTone(II)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move v1, p1

    move v2, p2

    const-string/jumbo v5, "PlayTone"

    move-object v3, v5

    .line 126
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    move v5, v1

    const/16 v6, 0xc8

    if-ge v5, v6, :cond_1

    .line 131
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "frequencyHz "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is invalid, using 200."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 132
    const/16 v5, 0xc8

    move v1, v5

    .line 134
    :cond_1
    move v5, v1

    const/16 v6, 0x36b0

    if-le v5, v6, :cond_2

    .line 135
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "frequencyHz "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is invalid, using 14000."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 136
    const/16 v5, 0x36b0

    move v1, v5

    .line 138
    :cond_2
    const/4 v5, 0x6

    new-array v5, v5, [B

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 139
    move-object v4, v6

    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v5, v6

    .line 140
    move-object v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    .line 141
    move-object v5, v0

    move v6, v1

    move-object v7, v4

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 142
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 143
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 144
    goto :goto_0
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "ResetInputScaledValue"

    move-object v2, v4

    .line 323
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    .line 341
    :goto_0
    return-void

    .line 328
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v4

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 329
    move-object v3, v5

    if-nez v4, :cond_1

    .line 330
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x198

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 332
    goto :goto_0

    .line 335
    :cond_1
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V

    .line 336
    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 337
    move-object v1, v5

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 338
    move-object v4, v1

    const/4 v5, 0x1

    const/16 v6, 0x8

    aput-byte v6, v4, v5

    .line 339
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, v1

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 340
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 341
    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    const-string/jumbo v5, "ResetMotorPosition"

    move-object v3, v5

    .line 346
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 347
    .line 364
    :goto_0
    return-void

    .line 351
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v5

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 352
    move-object v4, v6

    if-nez v5, :cond_1

    .line 353
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v3

    const/16 v8, 0x197

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 355
    goto :goto_0

    .line 358
    :cond_1
    const/4 v5, 0x4

    new-array v5, v5, [B

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 359
    move-object v1, v6

    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v5, v6

    .line 360
    move-object v5, v1

    const/4 v6, 0x1

    const/16 v7, 0xa

    aput-byte v7, v5, v6

    .line 361
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v1

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 362
    move-object v5, v0

    move v6, v2

    move-object v7, v1

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 363
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 364
    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .prologue
    .line 871
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "SetBrickName"

    move-object v2, v4

    .line 872
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 873
    .line 882
    :goto_0
    return-void

    .line 876
    :cond_0
    const/16 v4, 0x12

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 877
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 878
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, -0x68

    aput-byte v6, v4, v5

    .line 879
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x2

    const/16 v8, 0xf

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 880
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v1, v4

    .line 881
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    .line 882
    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorType;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v6, "SetInputMode"

    move-object v4, v6

    .line 204
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    .line 233
    :goto_0
    return-void

    .line 209
    :cond_0
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 210
    move-object v5, v7

    if-nez v6, :cond_1

    .line 211
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x198

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 213
    goto :goto_0

    .line 217
    :cond_1
    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/common/NxtSensorType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtSensorType;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 218
    move-object v1, v7

    if-nez v6, :cond_2

    .line 219
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x1a6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 221
    goto :goto_0

    .line 225
    :cond_2
    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/common/NxtSensorMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtSensorMode;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 226
    move-object v2, v7

    if-nez v6, :cond_3

    .line 227
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x1a7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 229
    goto :goto_0

    .line 232
    :cond_3
    move-object v6, v0

    move-object v7, v4

    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 233
    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 23
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorMode;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtRegulationMode;
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtRunState;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .prologue
    .line 155
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    const-string/jumbo v12, "SetOutputState"

    move-object v10, v12

    .line 156
    move-object v12, v1

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 157
    .line 196
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v12, v2

    invoke-static {v12}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v12

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    .line 162
    move-object v11, v13

    if-nez v12, :cond_1

    .line 163
    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v13, v1

    move-object v14, v10

    const/16 v15, 0x197

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move-object/from16 v19, v2

    aput-object v19, v17, v18

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 165
    goto :goto_0

    .line 169
    :cond_1
    move v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/google/appinventor/components/common/NxtMotorMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMotorMode;

    move-result-object v12

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    .line 170
    move-object v2, v13

    if-nez v12, :cond_2

    .line 171
    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v13, v1

    move-object v14, v10

    const/16 v15, 0x1a4

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move/from16 v19, v4

    .line 172
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    .line 171
    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 173
    goto :goto_0

    .line 177
    :cond_2
    move v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/google/appinventor/components/common/NxtRegulationMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRegulationMode;

    move-result-object v12

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    .line 178
    move-object v4, v13

    if-nez v12, :cond_3

    .line 179
    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v13, v1

    move-object v14, v10

    const/16 v15, 0x1a5

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move-object/from16 v19, v4

    aput-object v19, v17, v18

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 181
    goto/16 :goto_0

    .line 185
    :cond_3
    move v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/google/appinventor/components/common/NxtRunState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRunState;

    move-result-object v12

    move-object v5, v12

    .line 187
    move-object v12, v1

    move-object v13, v10

    move-object v14, v11

    move v15, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v5

    move-wide/from16 v20, v8

    invoke-virtual/range {v12 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 196
    goto/16 :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "StartProgram"

    move-object v2, v4

    .line 67
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    .line 84
    :goto_0
    return-void

    .line 70
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x195

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".rxe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 79
    :cond_2
    const/16 v4, 0x16

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 80
    move-object v3, v5

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 81
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 82
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x2

    const/16 v8, 0x13

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 83
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 84
    goto :goto_0
.end method

.method public StopProgram()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    const-string/jumbo v3, "StopProgram"

    move-object v1, v3

    .line 90
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [B

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 95
    move-object v2, v4

    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    .line 96
    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    .line 97
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 98
    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    const-string/jumbo v3, "StopSoundPlayback"

    move-object v1, v3

    .line 392
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    .line 400
    :goto_0
    return-void

    .line 396
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [B

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 397
    move-object v2, v4

    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    .line 398
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0xc

    aput-byte v5, v3, v4

    .line 399
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 400
    goto :goto_0
.end method
