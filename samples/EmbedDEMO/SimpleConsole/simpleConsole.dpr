program simpleConsole;

uses
  mybean.console,
  Forms,
  MyBeanBridgeConsole,  
  ufrmMain in 'ufrmMain.pas' {frmMain};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;

  /// <summary>
  ///   �ȼ��������ļ�����ȡBean��Ϣ
  ///     ��DLL����BPL�������
  ///   ִ�к�EXE�������ط�����ͨ������
  ///   TMyBeanFactoryTools(mybean.tools.beanFactory.pas)�е�GetBean���ò��
  /// </summary>
  ExecuteLoadBeanFromConfigFiles('ConfigPlugins\*.plug-ins');
  
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.