
bomb:     file format elf32-i386


Disassembly of section .init:

08048760 <_init>:
 8048760:	53                   	push   %ebx
 8048761:	83 ec 08             	sub    $0x8,%esp
 8048764:	e8 47 02 00 00       	call   80489b0 <__x86.get_pc_thunk.bx>
 8048769:	81 c3 97 48 00 00    	add    $0x4897,%ebx
 804876f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048775:	85 c0                	test   %eax,%eax
 8048777:	74 05                	je     804877e <_init+0x1e>
 8048779:	e8 f2 01 00 00       	call   8048970 <.plt.got>
 804877e:	83 c4 08             	add    $0x8,%esp
 8048781:	5b                   	pop    %ebx
 8048782:	c3                   	ret    

Disassembly of section .plt:

08048790 <.plt>:
 8048790:	ff 35 04 d0 04 08    	pushl  0x804d004
 8048796:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804879c:	00 00                	add    %al,(%eax)
	...

080487a0 <read@plt>:
 80487a0:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 80487a6:	68 00 00 00 00       	push   $0x0
 80487ab:	e9 e0 ff ff ff       	jmp    8048790 <.plt>

080487b0 <fflush@plt>:
 80487b0:	ff 25 10 d0 04 08    	jmp    *0x804d010
 80487b6:	68 08 00 00 00       	push   $0x8
 80487bb:	e9 d0 ff ff ff       	jmp    8048790 <.plt>

080487c0 <fgets@plt>:
 80487c0:	ff 25 14 d0 04 08    	jmp    *0x804d014
 80487c6:	68 10 00 00 00       	push   $0x10
 80487cb:	e9 c0 ff ff ff       	jmp    8048790 <.plt>

080487d0 <signal@plt>:
 80487d0:	ff 25 18 d0 04 08    	jmp    *0x804d018
 80487d6:	68 18 00 00 00       	push   $0x18
 80487db:	e9 b0 ff ff ff       	jmp    8048790 <.plt>

080487e0 <sleep@plt>:
 80487e0:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 80487e6:	68 20 00 00 00       	push   $0x20
 80487eb:	e9 a0 ff ff ff       	jmp    8048790 <.plt>

080487f0 <alarm@plt>:
 80487f0:	ff 25 20 d0 04 08    	jmp    *0x804d020
 80487f6:	68 28 00 00 00       	push   $0x28
 80487fb:	e9 90 ff ff ff       	jmp    8048790 <.plt>

08048800 <__stack_chk_fail@plt>:
 8048800:	ff 25 24 d0 04 08    	jmp    *0x804d024
 8048806:	68 30 00 00 00       	push   $0x30
 804880b:	e9 80 ff ff ff       	jmp    8048790 <.plt>

08048810 <strcpy@plt>:
 8048810:	ff 25 28 d0 04 08    	jmp    *0x804d028
 8048816:	68 38 00 00 00       	push   $0x38
 804881b:	e9 70 ff ff ff       	jmp    8048790 <.plt>

08048820 <gethostname@plt>:
 8048820:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 8048826:	68 40 00 00 00       	push   $0x40
 804882b:	e9 60 ff ff ff       	jmp    8048790 <.plt>

08048830 <getenv@plt>:
 8048830:	ff 25 30 d0 04 08    	jmp    *0x804d030
 8048836:	68 48 00 00 00       	push   $0x48
 804883b:	e9 50 ff ff ff       	jmp    8048790 <.plt>

08048840 <malloc@plt>:
 8048840:	ff 25 34 d0 04 08    	jmp    *0x804d034
 8048846:	68 50 00 00 00       	push   $0x50
 804884b:	e9 40 ff ff ff       	jmp    8048790 <.plt>

08048850 <puts@plt>:
 8048850:	ff 25 38 d0 04 08    	jmp    *0x804d038
 8048856:	68 58 00 00 00       	push   $0x58
 804885b:	e9 30 ff ff ff       	jmp    8048790 <.plt>

08048860 <__memmove_chk@plt>:
 8048860:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 8048866:	68 60 00 00 00       	push   $0x60
 804886b:	e9 20 ff ff ff       	jmp    8048790 <.plt>

08048870 <exit@plt>:
 8048870:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8048876:	68 68 00 00 00       	push   $0x68
 804887b:	e9 10 ff ff ff       	jmp    8048790 <.plt>

08048880 <__libc_start_main@plt>:
 8048880:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8048886:	68 70 00 00 00       	push   $0x70
 804888b:	e9 00 ff ff ff       	jmp    8048790 <.plt>

08048890 <write@plt>:
 8048890:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8048896:	68 78 00 00 00       	push   $0x78
 804889b:	e9 f0 fe ff ff       	jmp    8048790 <.plt>

080488a0 <strcasecmp@plt>:
 80488a0:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 80488a6:	68 80 00 00 00       	push   $0x80
 80488ab:	e9 e0 fe ff ff       	jmp    8048790 <.plt>

080488b0 <__isoc99_sscanf@plt>:
 80488b0:	ff 25 50 d0 04 08    	jmp    *0x804d050
 80488b6:	68 88 00 00 00       	push   $0x88
 80488bb:	e9 d0 fe ff ff       	jmp    8048790 <.plt>

080488c0 <fopen@plt>:
 80488c0:	ff 25 54 d0 04 08    	jmp    *0x804d054
 80488c6:	68 90 00 00 00       	push   $0x90
 80488cb:	e9 c0 fe ff ff       	jmp    8048790 <.plt>

080488d0 <__errno_location@plt>:
 80488d0:	ff 25 58 d0 04 08    	jmp    *0x804d058
 80488d6:	68 98 00 00 00       	push   $0x98
 80488db:	e9 b0 fe ff ff       	jmp    8048790 <.plt>

080488e0 <__printf_chk@plt>:
 80488e0:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 80488e6:	68 a0 00 00 00       	push   $0xa0
 80488eb:	e9 a0 fe ff ff       	jmp    8048790 <.plt>

080488f0 <socket@plt>:
 80488f0:	ff 25 60 d0 04 08    	jmp    *0x804d060
 80488f6:	68 a8 00 00 00       	push   $0xa8
 80488fb:	e9 90 fe ff ff       	jmp    8048790 <.plt>

08048900 <__fprintf_chk@plt>:
 8048900:	ff 25 64 d0 04 08    	jmp    *0x804d064
 8048906:	68 b0 00 00 00       	push   $0xb0
 804890b:	e9 80 fe ff ff       	jmp    8048790 <.plt>

08048910 <gethostbyname@plt>:
 8048910:	ff 25 68 d0 04 08    	jmp    *0x804d068
 8048916:	68 b8 00 00 00       	push   $0xb8
 804891b:	e9 70 fe ff ff       	jmp    8048790 <.plt>

08048920 <strtol@plt>:
 8048920:	ff 25 6c d0 04 08    	jmp    *0x804d06c
 8048926:	68 c0 00 00 00       	push   $0xc0
 804892b:	e9 60 fe ff ff       	jmp    8048790 <.plt>

08048930 <connect@plt>:
 8048930:	ff 25 70 d0 04 08    	jmp    *0x804d070
 8048936:	68 c8 00 00 00       	push   $0xc8
 804893b:	e9 50 fe ff ff       	jmp    8048790 <.plt>

08048940 <close@plt>:
 8048940:	ff 25 74 d0 04 08    	jmp    *0x804d074
 8048946:	68 d0 00 00 00       	push   $0xd0
 804894b:	e9 40 fe ff ff       	jmp    8048790 <.plt>

08048950 <__ctype_b_loc@plt>:
 8048950:	ff 25 78 d0 04 08    	jmp    *0x804d078
 8048956:	68 d8 00 00 00       	push   $0xd8
 804895b:	e9 30 fe ff ff       	jmp    8048790 <.plt>

08048960 <__sprintf_chk@plt>:
 8048960:	ff 25 7c d0 04 08    	jmp    *0x804d07c
 8048966:	68 e0 00 00 00       	push   $0xe0
 804896b:	e9 20 fe ff ff       	jmp    8048790 <.plt>

Disassembly of section .plt.got:

08048970 <.plt.got>:
 8048970:	ff 25 fc cf 04 08    	jmp    *0x804cffc
 8048976:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048980 <_start>:
 8048980:	31 ed                	xor    %ebp,%ebp
 8048982:	5e                   	pop    %esi
 8048983:	89 e1                	mov    %esp,%ecx
 8048985:	83 e4 f0             	and    $0xfffffff0,%esp
 8048988:	50                   	push   %eax
 8048989:	54                   	push   %esp
 804898a:	52                   	push   %edx
 804898b:	68 40 a2 04 08       	push   $0x804a240
 8048990:	68 e0 a1 04 08       	push   $0x804a1e0
 8048995:	51                   	push   %ecx
 8048996:	56                   	push   %esi
 8048997:	68 7b 8a 04 08       	push   $0x8048a7b
 804899c:	e8 df fe ff ff       	call   8048880 <__libc_start_main@plt>
 80489a1:	f4                   	hlt    
 80489a2:	66 90                	xchg   %ax,%ax
 80489a4:	66 90                	xchg   %ax,%ax
 80489a6:	66 90                	xchg   %ax,%ax
 80489a8:	66 90                	xchg   %ax,%ax
 80489aa:	66 90                	xchg   %ax,%ax
 80489ac:	66 90                	xchg   %ax,%ax
 80489ae:	66 90                	xchg   %ax,%ax

080489b0 <__x86.get_pc_thunk.bx>:
 80489b0:	8b 1c 24             	mov    (%esp),%ebx
 80489b3:	c3                   	ret    
 80489b4:	66 90                	xchg   %ax,%ax
 80489b6:	66 90                	xchg   %ax,%ax
 80489b8:	66 90                	xchg   %ax,%ax
 80489ba:	66 90                	xchg   %ax,%ax
 80489bc:	66 90                	xchg   %ax,%ax
 80489be:	66 90                	xchg   %ax,%ax

080489c0 <deregister_tm_clones>:
 80489c0:	b8 c3 d7 04 08       	mov    $0x804d7c3,%eax
 80489c5:	2d c0 d7 04 08       	sub    $0x804d7c0,%eax
 80489ca:	83 f8 06             	cmp    $0x6,%eax
 80489cd:	76 1a                	jbe    80489e9 <deregister_tm_clones+0x29>
 80489cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80489d4:	85 c0                	test   %eax,%eax
 80489d6:	74 11                	je     80489e9 <deregister_tm_clones+0x29>
 80489d8:	55                   	push   %ebp
 80489d9:	89 e5                	mov    %esp,%ebp
 80489db:	83 ec 14             	sub    $0x14,%esp
 80489de:	68 c0 d7 04 08       	push   $0x804d7c0
 80489e3:	ff d0                	call   *%eax
 80489e5:	83 c4 10             	add    $0x10,%esp
 80489e8:	c9                   	leave  
 80489e9:	f3 c3                	repz ret 
 80489eb:	90                   	nop
 80489ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080489f0 <register_tm_clones>:
 80489f0:	b8 c0 d7 04 08       	mov    $0x804d7c0,%eax
 80489f5:	2d c0 d7 04 08       	sub    $0x804d7c0,%eax
 80489fa:	c1 f8 02             	sar    $0x2,%eax
 80489fd:	89 c2                	mov    %eax,%edx
 80489ff:	c1 ea 1f             	shr    $0x1f,%edx
 8048a02:	01 d0                	add    %edx,%eax
 8048a04:	d1 f8                	sar    %eax
 8048a06:	74 1b                	je     8048a23 <register_tm_clones+0x33>
 8048a08:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a0d:	85 d2                	test   %edx,%edx
 8048a0f:	74 12                	je     8048a23 <register_tm_clones+0x33>
 8048a11:	55                   	push   %ebp
 8048a12:	89 e5                	mov    %esp,%ebp
 8048a14:	83 ec 10             	sub    $0x10,%esp
 8048a17:	50                   	push   %eax
 8048a18:	68 c0 d7 04 08       	push   $0x804d7c0
 8048a1d:	ff d2                	call   *%edx
 8048a1f:	83 c4 10             	add    $0x10,%esp
 8048a22:	c9                   	leave  
 8048a23:	f3 c3                	repz ret 
 8048a25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a30 <__do_global_dtors_aux>:
 8048a30:	80 3d e8 d7 04 08 00 	cmpb   $0x0,0x804d7e8
 8048a37:	75 13                	jne    8048a4c <__do_global_dtors_aux+0x1c>
 8048a39:	55                   	push   %ebp
 8048a3a:	89 e5                	mov    %esp,%ebp
 8048a3c:	83 ec 08             	sub    $0x8,%esp
 8048a3f:	e8 7c ff ff ff       	call   80489c0 <deregister_tm_clones>
 8048a44:	c6 05 e8 d7 04 08 01 	movb   $0x1,0x804d7e8
 8048a4b:	c9                   	leave  
 8048a4c:	f3 c3                	repz ret 
 8048a4e:	66 90                	xchg   %ax,%ax

08048a50 <frame_dummy>:
 8048a50:	b8 10 cf 04 08       	mov    $0x804cf10,%eax
 8048a55:	8b 10                	mov    (%eax),%edx
 8048a57:	85 d2                	test   %edx,%edx
 8048a59:	75 05                	jne    8048a60 <frame_dummy+0x10>
 8048a5b:	eb 93                	jmp    80489f0 <register_tm_clones>
 8048a5d:	8d 76 00             	lea    0x0(%esi),%esi
 8048a60:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a65:	85 d2                	test   %edx,%edx
 8048a67:	74 f2                	je     8048a5b <frame_dummy+0xb>
 8048a69:	55                   	push   %ebp
 8048a6a:	89 e5                	mov    %esp,%ebp
 8048a6c:	83 ec 14             	sub    $0x14,%esp
 8048a6f:	50                   	push   %eax
 8048a70:	ff d2                	call   *%edx
 8048a72:	83 c4 10             	add    $0x10,%esp
 8048a75:	c9                   	leave  
 8048a76:	e9 75 ff ff ff       	jmp    80489f0 <register_tm_clones>

08048a7b <main>:
 8048a7b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048a7f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a82:	ff 71 fc             	pushl  -0x4(%ecx)
 8048a85:	55                   	push   %ebp
 8048a86:	89 e5                	mov    %esp,%ebp
 8048a88:	53                   	push   %ebx
 8048a89:	51                   	push   %ecx
 8048a8a:	8b 01                	mov    (%ecx),%eax
 8048a8c:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048a8f:	83 f8 01             	cmp    $0x1,%eax
 8048a92:	75 0c                	jne    8048aa0 <main+0x25>
 8048a94:	a1 e0 d7 04 08       	mov    0x804d7e0,%eax
 8048a99:	a3 f0 d7 04 08       	mov    %eax,0x804d7f0
 8048a9e:	eb 5b                	jmp    8048afb <main+0x80>
 8048aa0:	83 f8 02             	cmp    $0x2,%eax
 8048aa3:	75 39                	jne    8048ade <main+0x63>
 8048aa5:	83 ec 08             	sub    $0x8,%esp
 8048aa8:	68 68 a2 04 08       	push   $0x804a268
 8048aad:	ff 73 04             	pushl  0x4(%ebx)
 8048ab0:	e8 0b fe ff ff       	call   80488c0 <fopen@plt>
 8048ab5:	a3 f0 d7 04 08       	mov    %eax,0x804d7f0
 8048aba:	83 c4 10             	add    $0x10,%esp
 8048abd:	85 c0                	test   %eax,%eax
 8048abf:	75 3a                	jne    8048afb <main+0x80>
 8048ac1:	ff 73 04             	pushl  0x4(%ebx)
 8048ac4:	ff 33                	pushl  (%ebx)
 8048ac6:	68 6a a2 04 08       	push   $0x804a26a
 8048acb:	6a 01                	push   $0x1
 8048acd:	e8 0e fe ff ff       	call   80488e0 <__printf_chk@plt>
 8048ad2:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048ad9:	e8 92 fd ff ff       	call   8048870 <exit@plt>
 8048ade:	83 ec 04             	sub    $0x4,%esp
 8048ae1:	ff 33                	pushl  (%ebx)
 8048ae3:	68 87 a2 04 08       	push   $0x804a287
 8048ae8:	6a 01                	push   $0x1
 8048aea:	e8 f1 fd ff ff       	call   80488e0 <__printf_chk@plt>
 8048aef:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048af6:	e8 75 fd ff ff       	call   8048870 <exit@plt>
 8048afb:	e8 84 07 00 00       	call   8049284 <initialize_bomb>
 8048b00:	83 ec 0c             	sub    $0xc,%esp
 8048b03:	68 f8 a2 04 08       	push   $0x804a2f8
 8048b08:	e8 43 fd ff ff       	call   8048850 <puts@plt>
 8048b0d:	c7 04 24 34 a3 04 08 	movl   $0x804a334,(%esp)
 8048b14:	e8 37 fd ff ff       	call   8048850 <puts@plt>
 8048b19:	e8 40 0a 00 00       	call   804955e <read_line>
 8048b1e:	89 04 24             	mov    %eax,(%esp)
 8048b21:	e8 07 01 00 00       	call   8048c2d <phase_1>
 8048b26:	e8 2c 0b 00 00       	call   8049657 <phase_defused>
 8048b2b:	c7 04 24 60 a3 04 08 	movl   $0x804a360,(%esp)
 8048b32:	e8 19 fd ff ff       	call   8048850 <puts@plt>
 8048b37:	e8 22 0a 00 00       	call   804955e <read_line>
 8048b3c:	89 04 24             	mov    %eax,(%esp)
 8048b3f:	e8 45 01 00 00       	call   8048c89 <phase_2>
 8048b44:	e8 0e 0b 00 00       	call   8049657 <phase_defused>
 8048b49:	c7 04 24 a1 a2 04 08 	movl   $0x804a2a1,(%esp)
 8048b50:	e8 fb fc ff ff       	call   8048850 <puts@plt>
 8048b55:	e8 04 0a 00 00       	call   804955e <read_line>
 8048b5a:	89 04 24             	mov    %eax,(%esp)
 8048b5d:	e8 48 01 00 00       	call   8048caa <phase_3>
 8048b62:	e8 f0 0a 00 00       	call   8049657 <phase_defused>
 8048b67:	c7 04 24 bf a2 04 08 	movl   $0x804a2bf,(%esp)
 8048b6e:	e8 dd fc ff ff       	call   8048850 <puts@plt>
 8048b73:	e8 e6 09 00 00       	call   804955e <read_line>
 8048b78:	89 04 24             	mov    %eax,(%esp)
 8048b7b:	e8 a7 01 00 00       	call   8048d27 <phase_4>
 8048b80:	e8 d2 0a 00 00       	call   8049657 <phase_defused>
 8048b85:	c7 04 24 8c a3 04 08 	movl   $0x804a38c,(%esp)
 8048b8c:	e8 bf fc ff ff       	call   8048850 <puts@plt>
 8048b91:	e8 c8 09 00 00       	call   804955e <read_line>
 8048b96:	89 04 24             	mov    %eax,(%esp)
 8048b99:	e8 3d 02 00 00       	call   8048ddb <phase_5>
 8048b9e:	e8 b4 0a 00 00       	call   8049657 <phase_defused>
 8048ba3:	c7 04 24 d0 a2 04 08 	movl   $0x804a2d0,(%esp)
 8048baa:	e8 a1 fc ff ff       	call   8048850 <puts@plt>
 8048baf:	e8 aa 09 00 00       	call   804955e <read_line>
 8048bb4:	89 04 24             	mov    %eax,(%esp)
 8048bb7:	e8 64 02 00 00       	call   8048e20 <phase_6>
 8048bbc:	e8 96 0a 00 00       	call   8049657 <phase_defused>
 8048bc1:	c7 04 24 b0 a3 04 08 	movl   $0x804a3b0,(%esp)
 8048bc8:	e8 83 fc ff ff       	call   8048850 <puts@plt>
 8048bcd:	e8 8c 09 00 00       	call   804955e <read_line>
 8048bd2:	89 04 24             	mov    %eax,(%esp)
 8048bd5:	e8 2c 03 00 00       	call   8048f06 <phase_7>
 8048bda:	e8 78 0a 00 00       	call   8049657 <phase_defused>
 8048bdf:	c7 04 24 d0 a3 04 08 	movl   $0x804a3d0,(%esp)
 8048be6:	e8 65 fc ff ff       	call   8048850 <puts@plt>
 8048beb:	e8 6e 09 00 00       	call   804955e <read_line>
 8048bf0:	89 04 24             	mov    %eax,(%esp)
 8048bf3:	e8 d2 04 00 00       	call   80490ca <phase_8>
 8048bf8:	e8 5a 0a 00 00       	call   8049657 <phase_defused>
 8048bfd:	c7 04 24 ee a2 04 08 	movl   $0x804a2ee,(%esp)
 8048c04:	e8 47 fc ff ff       	call   8048850 <puts@plt>
 8048c09:	e8 50 09 00 00       	call   804955e <read_line>
 8048c0e:	89 04 24             	mov    %eax,(%esp)
 8048c11:	e8 29 05 00 00       	call   804913f <phase_9>
 8048c16:	e8 3c 0a 00 00       	call   8049657 <phase_defused>
 8048c1b:	83 c4 10             	add    $0x10,%esp
 8048c1e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c23:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048c26:	59                   	pop    %ecx
 8048c27:	5b                   	pop    %ebx
 8048c28:	5d                   	pop    %ebp
 8048c29:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048c2c:	c3                   	ret    

08048c2d <phase_1>:
 8048c2d:	83 ec 20             	sub    $0x20,%esp
 8048c30:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048c36:	89 44 24 10          	mov    %eax,0x10(%esp)
 8048c3a:	31 c0                	xor    %eax,%eax
 8048c3c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8048c43:	00 
 8048c44:	8d 44 24 0c          	lea    0xc(%esp),%eax
 8048c48:	50                   	push   %eax
 8048c49:	68 f5 a3 04 08       	push   $0x804a3f5
 8048c4e:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048c52:	e8 59 fc ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 8048c57:	83 c4 10             	add    $0x10,%esp
 8048c5a:	83 f8 01             	cmp    $0x1,%eax
 8048c5d:	74 05                	je     8048c64 <phase_1+0x37>
 8048c5f:	e8 82 08 00 00       	call   80494e6 <explode_bomb>
 8048c64:	81 7c 24 08 97 01 00 	cmpl   $0x197,0x8(%esp)
 8048c6b:	00 
 8048c6c:	74 05                	je     8048c73 <phase_1+0x46>
 8048c6e:	e8 73 08 00 00       	call   80494e6 <explode_bomb>
 8048c73:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048c77:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048c7e:	74 05                	je     8048c85 <phase_1+0x58>
 8048c80:	e8 7b fb ff ff       	call   8048800 <__stack_chk_fail@plt>
 8048c85:	83 c4 1c             	add    $0x1c,%esp
 8048c88:	c3                   	ret    

08048c89 <phase_2>:
 8048c89:	83 ec 14             	sub    $0x14,%esp
 8048c8c:	68 f8 a3 04 08       	push   $0x804a3f8
 8048c91:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048c95:	e8 85 05 00 00       	call   804921f <strings_not_equal>
 8048c9a:	83 c4 10             	add    $0x10,%esp
 8048c9d:	85 c0                	test   %eax,%eax
 8048c9f:	74 05                	je     8048ca6 <phase_2+0x1d>
 8048ca1:	e8 40 08 00 00       	call   80494e6 <explode_bomb>
 8048ca6:	83 c4 0c             	add    $0xc,%esp
 8048ca9:	c3                   	ret    

08048caa <phase_3>:
 8048caa:	83 ec 18             	sub    $0x18,%esp
 8048cad:	68 24 a4 04 08       	push   $0x804a424
 8048cb2:	e8 49 05 00 00       	call   8049200 <string_length>
 8048cb7:	83 c0 01             	add    $0x1,%eax
 8048cba:	89 04 24             	mov    %eax,(%esp)
 8048cbd:	e8 7e fb ff ff       	call   8048840 <malloc@plt>
 8048cc2:	c7 00 53 68 65 20    	movl   $0x20656853,(%eax)
 8048cc8:	c7 40 04 73 65 6c 6c 	movl   $0x6c6c6573,0x4(%eax)
 8048ccf:	c7 40 08 73 20 73 65 	movl   $0x65732073,0x8(%eax)
 8048cd6:	c7 40 0c 61 73 68 65 	movl   $0x65687361,0xc(%eax)
 8048cdd:	c7 40 10 6c 6c 73 20 	movl   $0x20736c6c,0x10(%eax)
 8048ce4:	c7 40 14 62 79 20 74 	movl   $0x74207962,0x14(%eax)
 8048ceb:	c7 40 18 68 65 20 73 	movl   $0x73206568,0x18(%eax)
 8048cf2:	c7 40 1c 65 61 20 73 	movl   $0x73206165,0x1c(%eax)
 8048cf9:	c7 40 20 68 6f 72 65 	movl   $0x65726f68,0x20(%eax)
 8048d00:	66 c7 40 24 2e 00    	movw   $0x2e,0x24(%eax)
 8048d06:	c6 40 03 42          	movb   $0x42,0x3(%eax)
 8048d0a:	83 c4 08             	add    $0x8,%esp
 8048d0d:	50                   	push   %eax
 8048d0e:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048d12:	e8 08 05 00 00       	call   804921f <strings_not_equal>
 8048d17:	83 c4 10             	add    $0x10,%esp
 8048d1a:	85 c0                	test   %eax,%eax
 8048d1c:	74 05                	je     8048d23 <phase_3+0x79>
 8048d1e:	e8 c3 07 00 00       	call   80494e6 <explode_bomb>
 8048d23:	83 c4 0c             	add    $0xc,%esp
 8048d26:	c3                   	ret    

08048d27 <phase_4>:
 8048d27:	56                   	push   %esi
 8048d28:	53                   	push   %ebx
 8048d29:	83 ec 2c             	sub    $0x2c,%esp
 8048d2c:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048d32:	89 44 24 24          	mov    %eax,0x24(%esp)
 8048d36:	31 c0                	xor    %eax,%eax
 8048d38:	8d 44 24 0c          	lea    0xc(%esp),%eax
 8048d3c:	50                   	push   %eax
 8048d3d:	ff 74 24 3c          	pushl  0x3c(%esp)
 8048d41:	e8 dd 07 00 00       	call   8049523 <read_six_numbers>
 8048d46:	83 c4 10             	add    $0x10,%esp
 8048d49:	83 7c 24 04 03       	cmpl   $0x3,0x4(%esp)
 8048d4e:	74 05                	je     8048d55 <phase_4+0x2e>
 8048d50:	e8 91 07 00 00       	call   80494e6 <explode_bomb>
 8048d55:	8d 5c 24 04          	lea    0x4(%esp),%ebx
 8048d59:	8d 74 24 18          	lea    0x18(%esp),%esi
 8048d5d:	8b 03                	mov    (%ebx),%eax
 8048d5f:	01 c0                	add    %eax,%eax
 8048d61:	39 43 04             	cmp    %eax,0x4(%ebx)
 8048d64:	74 05                	je     8048d6b <phase_4+0x44>
 8048d66:	e8 7b 07 00 00       	call   80494e6 <explode_bomb>
 8048d6b:	83 c3 04             	add    $0x4,%ebx
 8048d6e:	39 f3                	cmp    %esi,%ebx
 8048d70:	75 eb                	jne    8048d5d <phase_4+0x36>
 8048d72:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048d76:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048d7d:	74 05                	je     8048d84 <phase_4+0x5d>
 8048d7f:	e8 7c fa ff ff       	call   8048800 <__stack_chk_fail@plt>
 8048d84:	83 c4 24             	add    $0x24,%esp
 8048d87:	5b                   	pop    %ebx
 8048d88:	5e                   	pop    %esi
 8048d89:	c3                   	ret    

08048d8a <fun5>:
 8048d8a <+0>:	53                  push   %ebx
 8048d8b:	83 ec 08             	sub    $0x8,%esp
 8048d8e:	8b 54 24 10          	mov    0x10(%esp),%edx
 8048d92:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 8048d96:	85 d2                	test   %edx,%edx
 8048d98:	74 37                	je     8048dd1 <fun5+71>
 8048d9a:	8b 1a                	mov    (%edx),%ebx
 8048d9c:	39 cb                	cmp    %ecx,%ebx
 8048d9e:	7e 13                	jle    8048db3 <fun5+41>
 8048da0:	83 ec 08             	sub    $0x8,%esp
 8048da3:	51                   	push   %ecx
 8048da4:	ff 72 04             	pushl  0x4(%edx)
 8048da7:	e8 de ff ff ff       	call   8048d8a <fun5>
 8048dac:	83 c4 10             	add    $0x10,%esp
 8048daf:	01 c0                	add    %eax,%eax
 8048db1:	eb 23                	jmp    8048dd6 <fun5+76>
 8048db3 <+41>:	b8 00 00 00 00      mov    $0x0,%eax
 8048db8:	39 cb               	cmp    %ecx,%ebx
 8048dba:	74 1a 		            je     8048dd6 <fun5+76>
 8048dbc:	83 ec 08             	sub    $0x8,%esp
 8048dbf:	51                   	push   %ecx
 8048dc0:	ff 72 08             	pushl  0x8(%edx)
 8048dc3:	e8 c2 ff ff ff       	call   8048d8a <fun5>
 8048dc8:	83 c4 10             	add    $0x10,%esp
 8048dcb:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048dcf:	eb 05                	jmp    8048dd6 <fun5+76>
 8048dd1 <+71>:	b8 ff ff ff ff      mov    $0xffffffff,%eax
 8048dd6 <+76>:	83 c4 08            add    $0x8,%esp
 8048dd9:	5b                   	pop    %ebx
 8048dda:	c3                   	ret    

08048ddb <phase_5>:
 8048ddb:	53                   	push   %ebx
 8048ddc:	83 ec 0c             	sub    $0xc,%esp
 8048ddf:	6a 0a                	push   $0xa
 8048de1:	6a 00                	push   $0x0
 8048de3:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048de7:	e8 34 fb ff ff       	call   8048920 <strtol@plt>
 8048dec:	89 c3                	mov    %eax,%ebx
 8048dee:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048df1:	83 c4 10             	add    $0x10,%esp
 8048df4:	3d ec 03 00 00       	cmp    $0x3ec,%eax
 8048df9:	76 05                	jbe    8048e00 <phase_5+0x25>
 8048dfb:	e8 e6 06 00 00       	call   80494e6 <explode_bomb>
 8048e00:	83 ec 08             	sub    $0x8,%esp
 8048e03:	53                   	push   %ebx
 8048e04:	68 e8 d0 04 08       	push   $0x804d0e8
 8048e09:	e8 7c ff ff ff       	call   8048d8a <fun5>
 8048e0e:	83 c4 10             	add    $0x10,%esp
 8048e11:	83 f8 03             	cmp    $0x3,%eax
 8048e14:	74 05                	je     8048e1b <phase_5+0x40>
 8048e16:	e8 cb 06 00 00       	call   80494e6 <explode_bomb>
 8048e1b:	83 c4 08             	add    $0x8,%esp
 8048e1e:	5b                   	pop    %ebx
 8048e1f:	c3                   	ret    

08048e20 <phase_6>:
 0x08048e20: <+0>:	push   %esi
   0x08048e21: <+1>:	push   %ebx
   0x08048e22: <+2>:	sub    $0x4c,%esp
   0x08048e25: <+5>:	mov    %gs:0x14,%eax
   0x08048e2b: <+11>:	mov    %eax,0x44(%esp)
   0x08048e2f: <+15>:	xor    %eax,%eax
   0x08048e31: <+17>:	lea    0x14(%esp),%eax
   0x08048e35: <+21>:	push   %eax
   0x08048e36: <+22>:	pushl  0x5c(%esp)
   0x08048e3a: <+26>:	call   0x8049523 <read_six_numbers>
   0x08048e3f: <+31>:	add    $0x10,%esp
   0x08048e42: <+34>:	mov    $0x0,%esi
   0x08048e47: <+39>:	mov    0xc(%esp,%esi,4),%eax
   0x08048e4b: <+43>:	sub    $0x1,%eax
   0x08048e4e: <+46>:	cmp    $0x5,%eax
   0x08048e51: <+49>:	jbe    0x8048e58 <phase_6+56>
   0x08048e53: <+51>:	call   0x80494e6 <explode_bomb>
   0x08048e58: <+56>:	add    $0x1,%esi
   0x08048e5b: <+59>:	cmp    $0x6,%esi
   0x08048e5e: <+62>:	je     0x8048e93 <phase_6+115>
   0x08048e60: <+64>:	mov    %esi,%ebx
   0x08048e62: <+66>:	mov    0xc(%esp,%ebx,4),%eax
   0x08048e66: <+70>:	cmp    %eax,0x8(%esp,%esi,4)
   0x08048e6a: <+74>:	jne    0x8048e71 <phase_6+81>
   0x08048e6c: <+76>:	call   0x80494e6 <explode_bomb>
   0x08048e71: <+81>:	add    $0x1,%ebx
   0x08048e74: <+84>:	cmp    $0x5,%ebx
   0x08048e77: <+87>:	jle    0x8048e62 <phase_6+66>
   0x08048e79: <+89>:	jmp    0x8048e47 <phase_6+39>
   0x08048e7b: <+91>:	mov    0x8(%edx),%edx
   0x08048e7e: <+94>:	add    $0x1,%eax
   0x08048e81: <+97>:	cmp    %ecx,%eax
   0x08048e83: <+99>:	jne    0x8048e7b <phase_6+91>
   0x08048e85: <+101>:	mov    %edx,0x24(%esp,%esi,4)
   0x08048e89: <+105>:	add    $0x1,%ebx
   0x08048e8c: <+108>:	cmp    $0x6,%ebx
   0x08048e8f: <+111>:	jne    0x8048e98 <phase_6+120>
   0x08048e91: <+113>:	jmp    0x8048eaf <phase_6+143>
   0x08048e93: <+115>:	mov    $0x0,%ebx
   0x08048e98: <+120>:	mov    %ebx,%esi
   0x08048e9a: <+122>:	mov    0xc(%esp,%ebx,4),%ecx
   0x08048e9e: <+126>:	mov    $0x1,%eax
   0x08048ea3: <+131>:	mov    $0x804d0a0,%edx
   0x08048ea8: <+136>:	cmp    $0x1,%ecx
   0x08048eab: <+139>:	jg     0x8048e7b <phase_6+91>
   0x08048ead: <+141>:	jmp    0x8048e85 <phase_6+101>
   0x08048eaf: <+143>:	mov    0x24(%esp),%ebx
   0x08048eb3: <+147>:	lea    0x24(%esp),%eax
   0x08048eb7: <+151>:	lea    0x38(%esp),%esi
   0x08048ebb: <+155>:	mov    %ebx,%ecx
   0x08048ebd: <+157>:	mov    0x4(%eax),%edx
   0x08048ec0: <+160>:	mov    %edx,0x8(%ecx)
   0x08048ec3: <+163>:	add    $0x4,%eax
   0x08048ec6: <+166>:	mov    %edx,%ecx
   0x08048ec8: <+168>:	cmp    %esi,%eax
   0x08048eca: <+170>:	jne    0x8048ebd <phase_6+157>
   0x08048ecc: <+172>:	movl   $0x0,0x8(%edx)
   0x08048ed3: <+179>:	mov    $0x5,%esi
   0x08048ed8: <+184>:	mov    0x8(%ebx),%eax
   0x08048edb: <+187>:	mov    (%eax),%eax
   0x08048edd: <+189>:	cmp    %eax,(%ebx)
   0x08048edf: <+191>:	jle    0x8048ee6 <phase_6+198>
   0x08048ee1: <+193>:	call   0x80494e6 <explode_bomb>
   0x08048ee6: <+198>:	mov    0x8(%ebx),%ebx
   0x08048ee9: <+201>:	sub    $0x1,%esi
   0x08048eec: <+204>:	jne    0x8048ed8 <phase_6+184>
   0x08048eee: <+206>:	mov    0x3c(%esp),%eax
   0x08048ef2: <+210>:	xor    %gs:0x14,%eax
   0x08048ef9: <+217>:	je     0x8048f00 <phase_6+224>
   0x08048efb: <+219>:	call   0x8048800 <__stack_chk_fail@plt>
   0x08048f00: <+224>:	add    $0x44,%esp
   0x08048f03: <+227>:	pop    %ebx
   0x08048f04: <+228>:	pop    %esi
   0x08048f05: <+229>:	ret    

08048f06 <phase_7>:
 8048f06:	83 ec 28             	sub    $0x28,%esp
 8048f09:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048f0f:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048f13:	31 c0                	xor    %eax,%eax
 8048f15:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048f19:	50                   	push   %eax
 8048f1a:	8d 44 24 13          	lea    0x13(%esp),%eax
 8048f1e:	50                   	push   %eax
 8048f1f:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048f23:	50                   	push   %eax
 8048f24:	68 ef a3 04 08       	push   $0x804a3ef
 8048f29:	ff 74 24 3c          	pushl  0x3c(%esp)
 8048f2d:	e8 7e f9 ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 8048f32:	83 c4 20             	add    $0x20,%esp
 8048f35:	83 f8 02             	cmp    $0x2,%eax
 8048f38:	7f 05                	jg     8048f3f <phase_7+0x39>
 8048f3a:	e8 a7 05 00 00       	call   80494e6 <explode_bomb>
 8048f3f:	83 7c 24 04 07       	cmpl   $0x7,0x4(%esp)
 8048f44:	0f 87 fc 00 00 00    	ja     8049046 <phase_7+0x140>
 8048f4a:	8b 44 24 04          	mov    0x4(%esp),%eax
 8048f4e:	ff 24 85 60 a4 04 08 	jmp    *0x804a460(,%eax,4)
 8048f55:	b8 72 00 00 00       	mov    $0x72,%eax
 8048f5a:	81 7c 24 08 eb 00 00 	cmpl   $0xeb,0x8(%esp)
 8048f61:	00 
 8048f62:	0f 84 e8 00 00 00    	je     8049050 <phase_7+0x14a>
 8048f68:	e8 79 05 00 00       	call   80494e6 <explode_bomb>
 8048f6d:	b8 72 00 00 00       	mov    $0x72,%eax
 8048f72:	e9 d9 00 00 00       	jmp    8049050 <phase_7+0x14a>
 8048f77:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048f7c:	81 7c 24 08 8b 00 00 	cmpl   $0x8b,0x8(%esp)
 8048f83:	00 
 8048f84:	0f 84 c6 00 00 00    	je     8049050 <phase_7+0x14a>
 8048f8a:	e8 57 05 00 00       	call   80494e6 <explode_bomb>
 8048f8f:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048f94:	e9 b7 00 00 00       	jmp    8049050 <phase_7+0x14a>
 8048f99:	b8 62 00 00 00       	mov    $0x62,%eax
 8048f9e:	81 7c 24 08 f7 02 00 	cmpl   $0x2f7,0x8(%esp)
 8048fa5:	00 
 8048fa6:	0f 84 a4 00 00 00    	je     8049050 <phase_7+0x14a>
 8048fac:	e8 35 05 00 00       	call   80494e6 <explode_bomb>
 8048fb1:	b8 62 00 00 00       	mov    $0x62,%eax
 8048fb6:	e9 95 00 00 00       	jmp    8049050 <phase_7+0x14a>
 8048fbb:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048fc0:	81 7c 24 08 11 03 00 	cmpl   $0x311,0x8(%esp)
 8048fc7:	00 
 8048fc8:	0f 84 82 00 00 00    	je     8049050 <phase_7+0x14a>
 8048fce:	e8 13 05 00 00       	call   80494e6 <explode_bomb>
 8048fd3:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048fd8:	eb 76                	jmp    8049050 <phase_7+0x14a>
 8048fda:	b8 71 00 00 00       	mov    $0x71,%eax
 8048fdf:	81 7c 24 08 27 01 00 	cmpl   $0x127,0x8(%esp)
 8048fe6:	00 
 8048fe7:	74 67                	je     8049050 <phase_7+0x14a>
 8048fe9:	e8 f8 04 00 00       	call   80494e6 <explode_bomb>
 8048fee:	b8 71 00 00 00       	mov    $0x71,%eax
 8048ff3:	eb 5b                	jmp    8049050 <phase_7+0x14a>
 8048ff5:	b8 78 00 00 00       	mov    $0x78,%eax
 8048ffa:	81 7c 24 08 ea 00 00 	cmpl   $0xea,0x8(%esp)
 8049001:	00 
 8049002:	74 4c                	je     8049050 <phase_7+0x14a>
 8049004:	e8 dd 04 00 00       	call   80494e6 <explode_bomb>
 8049009:	b8 78 00 00 00       	mov    $0x78,%eax
 804900e:	eb 40                	jmp    8049050 <phase_7+0x14a>
 8049010:	b8 6f 00 00 00       	mov    $0x6f,%eax
 8049015:	81 7c 24 08 a1 01 00 	cmpl   $0x1a1,0x8(%esp)
 804901c:	00 
 804901d:	74 31                	je     8049050 <phase_7+0x14a>
 804901f:	e8 c2 04 00 00       	call   80494e6 <explode_bomb>
 8049024:	b8 6f 00 00 00       	mov    $0x6f,%eax
 8049029:	eb 25                	jmp    8049050 <phase_7+0x14a>
 804902b:	b8 78 00 00 00       	mov    $0x78,%eax
 8049030:	81 7c 24 08 16 01 00 	cmpl   $0x116,0x8(%esp)
 8049037:	00 
 8049038:	74 16                	je     8049050 <phase_7+0x14a>
 804903a:	e8 a7 04 00 00       	call   80494e6 <explode_bomb>
 804903f:	b8 78 00 00 00       	mov    $0x78,%eax
 8049044:	eb 0a                	jmp    8049050 <phase_7+0x14a>
 8049046:	e8 9b 04 00 00       	call   80494e6 <explode_bomb>
 804904b:	b8 6e 00 00 00       	mov    $0x6e,%eax
 8049050:	3a 44 24 03          	cmp    0x3(%esp),%al
 8049054:	74 05                	je     804905b <phase_7+0x155>
 8049056:	e8 8b 04 00 00       	call   80494e6 <explode_bomb>
 804905b:	8b 44 24 0c          	mov    0xc(%esp),%eax
 804905f:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049066:	74 05                	je     804906d <phase_7+0x167>
 8049068:	e8 93 f7 ff ff       	call   8048800 <__stack_chk_fail@plt>
 804906d:	83 c4 1c             	add    $0x1c,%esp
 8049070:	c3                   	ret    

08049071 <fun8>:
 8049071:	56                   	push   %esi
 8049072:	53                   	push   %ebx
 8049073:	83 ec 04             	sub    $0x4,%esp
 8049076:	8b 54 24 10          	mov    0x10(%esp),%edx
 804907a:	8b 74 24 14          	mov    0x14(%esp),%esi
 804907e:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 8049082:	89 c8                	mov    %ecx,%eax
 8049084:	29 f0                	sub    %esi,%eax
 8049086:	89 c3                	mov    %eax,%ebx
 8049088:	c1 eb 1f             	shr    $0x1f,%ebx
 804908b:	01 d8                	add    %ebx,%eax
 804908d:	d1 f8                	sar    %eax
 804908f:	8d 1c 30             	lea    (%eax,%esi,1),%ebx
 8049092:	39 d3                	cmp    %edx,%ebx
 8049094:	7e 15                	jle    80490ab <fun8+0x3a>
 8049096:	83 ec 04             	sub    $0x4,%esp
 8049099:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804909c:	50                   	push   %eax
 804909d:	56                   	push   %esi
 804909e:	52                   	push   %edx
 804909f:	e8 cd ff ff ff       	call   8049071 <fun8>
 80490a4:	83 c4 10             	add    $0x10,%esp
 80490a7:	01 d8                	add    %ebx,%eax
 80490a9:	eb 19                	jmp    80490c4 <fun8+0x53>
 80490ab:	89 d8                	mov    %ebx,%eax
 80490ad:	39 d3                	cmp    %edx,%ebx
 80490af:	7d 13                	jge    80490c4 <fun8+0x53>
 80490b1:	83 ec 04             	sub    $0x4,%esp
 80490b4:	51                   	push   %ecx
 80490b5:	8d 43 01             	lea    0x1(%ebx),%eax
 80490b8:	50                   	push   %eax
 80490b9:	52                   	push   %edx
 80490ba:	e8 b2 ff ff ff       	call   8049071 <fun8>
 80490bf:	83 c4 10             	add    $0x10,%esp
 80490c2:	01 d8                	add    %ebx,%eax
 80490c4:	83 c4 04             	add    $0x4,%esp
 80490c7:	5b                   	pop    %ebx
 80490c8:	5e                   	pop    %esi
 80490c9:	c3                   	ret    

080490ca <phase_8>:
 80490ca:	83 ec 1c             	sub    $0x1c,%esp
 80490cd:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80490d3:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80490d7:	31 c0                	xor    %eax,%eax
 80490d9:	8d 44 24 08          	lea    0x8(%esp),%eax
 80490dd:	50                   	push   %eax
 80490de:	8d 44 24 08          	lea    0x8(%esp),%eax
 80490e2:	50                   	push   %eax
 80490e3:	68 a1 a6 04 08       	push   $0x804a6a1
 80490e8:	ff 74 24 2c          	pushl  0x2c(%esp)
 80490ec:	e8 bf f7 ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 80490f1:	83 c4 10             	add    $0x10,%esp
 80490f4:	83 f8 02             	cmp    $0x2,%eax
 80490f7:	75 07                	jne    8049100 <phase_8+0x36>
 80490f9:	83 7c 24 04 0e       	cmpl   $0xe,0x4(%esp)
 80490fe:	76 05                	jbe    8049105 <phase_8+0x3b>
 8049100:	e8 e1 03 00 00       	call   80494e6 <explode_bomb>
 8049105:	83 ec 04             	sub    $0x4,%esp
 8049108:	6a 0e                	push   $0xe
 804910a:	6a 00                	push   $0x0
 804910c:	ff 74 24 10          	pushl  0x10(%esp)
 8049110:	e8 5c ff ff ff       	call   8049071 <fun8>
 8049115:	83 c4 10             	add    $0x10,%esp
 8049118:	83 f8 1f             	cmp    $0x1f,%eax
 804911b:	75 07                	jne    8049124 <phase_8+0x5a>
 804911d:	83 7c 24 08 1f       	cmpl   $0x1f,0x8(%esp)
 8049122:	74 05                	je     8049129 <phase_8+0x5f>
 8049124:	e8 bd 03 00 00       	call   80494e6 <explode_bomb>
 8049129:	8b 44 24 0c          	mov    0xc(%esp),%eax
 804912d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049134:	74 05                	je     804913b <phase_8+0x71>
 8049136:	e8 c5 f6 ff ff       	call   8048800 <__stack_chk_fail@plt>
 804913b:	83 c4 1c             	add    $0x1c,%esp
 804913e:	c3                   	ret    

0804913f <phase_9>:
 804913f:	53                   	push   %ebx
 8049140:	83 ec 14             	sub    $0x14,%esp
 8049143:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
 8049147:	53                   	push   %ebx
 8049148:	e8 b3 00 00 00       	call   8049200 <string_length>
 804914d:	83 c4 10             	add    $0x10,%esp
 8049150:	83 f8 06             	cmp    $0x6,%eax
 8049153:	74 05                	je     804915a <phase_9+0x1b>
 8049155:	e8 8c 03 00 00       	call   80494e6 <explode_bomb>
 804915a:	89 d8                	mov    %ebx,%eax
 804915c:	83 c3 06             	add    $0x6,%ebx
 804915f:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049164:	0f b6 10             	movzbl (%eax),%edx
 8049167:	83 e2 0f             	and    $0xf,%edx
 804916a:	03 0c 95 80 a4 04 08 	add    0x804a480(,%edx,4),%ecx
 8049171:	83 c0 01             	add    $0x1,%eax
 8049174:	39 d8                	cmp    %ebx,%eax
 8049176:	75 ec                	jne    8049164 <phase_9+0x25>
 8049178:	83 f9 26             	cmp    $0x26,%ecx
 804917b:	74 05                	je     8049182 <phase_9+0x43>
 804917d:	e8 64 03 00 00       	call   80494e6 <explode_bomb>
 8049182:	83 c4 08             	add    $0x8,%esp
 8049185:	5b                   	pop    %ebx
 8049186:	c3                   	ret    

08049187 <sig_handler>:
 8049187:	83 ec 18             	sub    $0x18,%esp
 804918a:	68 c0 a4 04 08       	push   $0x804a4c0
 804918f:	e8 bc f6 ff ff       	call   8048850 <puts@plt>
 8049194:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 804919b:	e8 40 f6 ff ff       	call   80487e0 <sleep@plt>
 80491a0:	83 c4 08             	add    $0x8,%esp
 80491a3:	68 1d a6 04 08       	push   $0x804a61d
 80491a8:	6a 01                	push   $0x1
 80491aa:	e8 31 f7 ff ff       	call   80488e0 <__printf_chk@plt>
 80491af:	83 c4 04             	add    $0x4,%esp
 80491b2:	ff 35 e4 d7 04 08    	pushl  0x804d7e4
 80491b8:	e8 f3 f5 ff ff       	call   80487b0 <fflush@plt>
 80491bd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80491c4:	e8 17 f6 ff ff       	call   80487e0 <sleep@plt>
 80491c9:	c7 04 24 25 a6 04 08 	movl   $0x804a625,(%esp)
 80491d0:	e8 7b f6 ff ff       	call   8048850 <puts@plt>
 80491d5:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 80491dc:	e8 8f f6 ff ff       	call   8048870 <exit@plt>

080491e1 <invalid_phase>:
 80491e1:	83 ec 10             	sub    $0x10,%esp
 80491e4:	ff 74 24 14          	pushl  0x14(%esp)
 80491e8:	68 2d a6 04 08       	push   $0x804a62d
 80491ed:	6a 01                	push   $0x1
 80491ef:	e8 ec f6 ff ff       	call   80488e0 <__printf_chk@plt>
 80491f4:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80491fb:	e8 70 f6 ff ff       	call   8048870 <exit@plt>

08049200 <string_length>:
 8049200:	8b 54 24 04          	mov    0x4(%esp),%edx
 8049204:	80 3a 00             	cmpb   $0x0,(%edx)
 8049207:	74 10                	je     8049219 <string_length+0x19>
 8049209:	b8 00 00 00 00       	mov    $0x0,%eax
 804920e:	83 c0 01             	add    $0x1,%eax
 8049211:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8049215:	75 f7                	jne    804920e <string_length+0xe>
 8049217:	f3 c3                	repz ret 
 8049219:	b8 00 00 00 00       	mov    $0x0,%eax
 804921e:	c3                   	ret    

0804921f <strings_not_equal>:
 804921f:	57                   	push   %edi
 8049220:	56                   	push   %esi
 8049221:	53                   	push   %ebx
 8049222:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8049226:	8b 74 24 14          	mov    0x14(%esp),%esi
 804922a:	53                   	push   %ebx
 804922b:	e8 d0 ff ff ff       	call   8049200 <string_length>
 8049230:	89 c7                	mov    %eax,%edi
 8049232:	89 34 24             	mov    %esi,(%esp)
 8049235:	e8 c6 ff ff ff       	call   8049200 <string_length>
 804923a:	83 c4 04             	add    $0x4,%esp
 804923d:	ba 01 00 00 00       	mov    $0x1,%edx
 8049242:	39 c7                	cmp    %eax,%edi
 8049244:	75 38                	jne    804927e <strings_not_equal+0x5f>
 8049246:	0f b6 03             	movzbl (%ebx),%eax
 8049249:	84 c0                	test   %al,%al
 804924b:	74 1e                	je     804926b <strings_not_equal+0x4c>
 804924d:	3a 06                	cmp    (%esi),%al
 804924f:	74 06                	je     8049257 <strings_not_equal+0x38>
 8049251:	eb 1f                	jmp    8049272 <strings_not_equal+0x53>
 8049253:	3a 06                	cmp    (%esi),%al
 8049255:	75 22                	jne    8049279 <strings_not_equal+0x5a>
 8049257:	83 c3 01             	add    $0x1,%ebx
 804925a:	83 c6 01             	add    $0x1,%esi
 804925d:	0f b6 03             	movzbl (%ebx),%eax
 8049260:	84 c0                	test   %al,%al
 8049262:	75 ef                	jne    8049253 <strings_not_equal+0x34>
 8049264:	ba 00 00 00 00       	mov    $0x0,%edx
 8049269:	eb 13                	jmp    804927e <strings_not_equal+0x5f>
 804926b:	ba 00 00 00 00       	mov    $0x0,%edx
 8049270:	eb 0c                	jmp    804927e <strings_not_equal+0x5f>
 8049272:	ba 01 00 00 00       	mov    $0x1,%edx
 8049277:	eb 05                	jmp    804927e <strings_not_equal+0x5f>
 8049279:	ba 01 00 00 00       	mov    $0x1,%edx
 804927e:	89 d0                	mov    %edx,%eax
 8049280:	5b                   	pop    %ebx
 8049281:	5e                   	pop    %esi
 8049282:	5f                   	pop    %edi
 8049283:	c3                   	ret    

08049284 <initialize_bomb>:
 8049284:	56                   	push   %esi
 8049285:	53                   	push   %ebx
 8049286:	81 ec 5c 20 00 00    	sub    $0x205c,%esp
 804928c:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049292:	89 84 24 54 20 00 00 	mov    %eax,0x2054(%esp)
 8049299:	31 c0                	xor    %eax,%eax
 804929b:	68 87 91 04 08       	push   $0x8049187
 80492a0:	6a 02                	push   $0x2
 80492a2:	e8 29 f5 ff ff       	call   80487d0 <signal@plt>
 80492a7:	83 c4 08             	add    $0x8,%esp
 80492aa:	6a 40                	push   $0x40
 80492ac:	8d 44 24 18          	lea    0x18(%esp),%eax
 80492b0:	50                   	push   %eax
 80492b1:	e8 6a f5 ff ff       	call   8048820 <gethostname@plt>
 80492b6:	83 c4 10             	add    $0x10,%esp
 80492b9:	85 c0                	test   %eax,%eax
 80492bb:	75 14                	jne    80492d1 <initialize_bomb+0x4d>
 80492bd:	a1 c0 d5 04 08       	mov    0x804d5c0,%eax
 80492c2:	bb c4 d5 04 08       	mov    $0x804d5c4,%ebx
 80492c7:	8d 74 24 0c          	lea    0xc(%esp),%esi
 80492cb:	85 c0                	test   %eax,%eax
 80492cd:	75 1b                	jne    80492ea <initialize_bomb+0x66>
 80492cf:	eb 56                	jmp    8049327 <initialize_bomb+0xa3>
 80492d1:	83 ec 0c             	sub    $0xc,%esp
 80492d4:	68 f8 a4 04 08       	push   $0x804a4f8
 80492d9:	e8 72 f5 ff ff       	call   8048850 <puts@plt>
 80492de:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80492e5:	e8 86 f5 ff ff       	call   8048870 <exit@plt>
 80492ea:	83 ec 08             	sub    $0x8,%esp
 80492ed:	56                   	push   %esi
 80492ee:	50                   	push   %eax
 80492ef:	e8 ac f5 ff ff       	call   80488a0 <strcasecmp@plt>
 80492f4:	83 c4 10             	add    $0x10,%esp
 80492f7:	85 c0                	test   %eax,%eax
 80492f9:	74 52                	je     804934d <initialize_bomb+0xc9>
 80492fb:	83 c3 04             	add    $0x4,%ebx
 80492fe:	8b 43 fc             	mov    -0x4(%ebx),%eax
 8049301:	85 c0                	test   %eax,%eax
 8049303:	75 e5                	jne    80492ea <initialize_bomb+0x66>
 8049305:	eb 20                	jmp    8049327 <initialize_bomb+0xa3>
 8049307:	83 ec 04             	sub    $0x4,%esp
 804930a:	8d 44 24 50          	lea    0x50(%esp),%eax
 804930e:	50                   	push   %eax
 804930f:	68 3e a6 04 08       	push   $0x804a63e
 8049314:	6a 01                	push   $0x1
 8049316:	e8 c5 f5 ff ff       	call   80488e0 <__printf_chk@plt>
 804931b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049322:	e8 49 f5 ff ff       	call   8048870 <exit@plt>
 8049327:	83 ec 0c             	sub    $0xc,%esp
 804932a:	68 30 a5 04 08       	push   $0x804a530
 804932f:	e8 1c f5 ff ff       	call   8048850 <puts@plt>
 8049334:	83 c4 04             	add    $0x4,%esp
 8049337:	8d 44 24 18          	lea    0x18(%esp),%eax
 804933b:	50                   	push   %eax
 804933c:	e8 0f f5 ff ff       	call   8048850 <puts@plt>
 8049341:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049348:	e8 23 f5 ff ff       	call   8048870 <exit@plt>
 804934d:	83 ec 0c             	sub    $0xc,%esp
 8049350:	8d 44 24 58          	lea    0x58(%esp),%eax
 8049354:	50                   	push   %eax
 8049355:	e8 29 0c 00 00       	call   8049f83 <init_driver>
 804935a:	83 c4 10             	add    $0x10,%esp
 804935d:	85 c0                	test   %eax,%eax
 804935f:	78 a6                	js     8049307 <initialize_bomb+0x83>
 8049361:	8b 84 24 4c 20 00 00 	mov    0x204c(%esp),%eax
 8049368:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 804936f:	74 05                	je     8049376 <initialize_bomb+0xf2>
 8049371:	e8 8a f4 ff ff       	call   8048800 <__stack_chk_fail@plt>
 8049376:	81 c4 54 20 00 00    	add    $0x2054,%esp
 804937c:	5b                   	pop    %ebx
 804937d:	5e                   	pop    %esi
 804937e:	c3                   	ret    

0804937f <initialize_bomb_solve>:
 804937f:	f3 c3                	repz ret 

08049381 <blank_line>:
 8049381:	56                   	push   %esi
 8049382:	53                   	push   %ebx
 8049383:	83 ec 04             	sub    $0x4,%esp
 8049386:	8b 74 24 10          	mov    0x10(%esp),%esi
 804938a:	eb 14                	jmp    80493a0 <blank_line+0x1f>
 804938c:	e8 bf f5 ff ff       	call   8048950 <__ctype_b_loc@plt>
 8049391:	83 c6 01             	add    $0x1,%esi
 8049394:	0f be db             	movsbl %bl,%ebx
 8049397:	8b 00                	mov    (%eax),%eax
 8049399:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 804939e:	74 0e                	je     80493ae <blank_line+0x2d>
 80493a0:	0f b6 1e             	movzbl (%esi),%ebx
 80493a3:	84 db                	test   %bl,%bl
 80493a5:	75 e5                	jne    804938c <blank_line+0xb>
 80493a7:	b8 01 00 00 00       	mov    $0x1,%eax
 80493ac:	eb 05                	jmp    80493b3 <blank_line+0x32>
 80493ae:	b8 00 00 00 00       	mov    $0x0,%eax
 80493b3:	83 c4 04             	add    $0x4,%esp
 80493b6:	5b                   	pop    %ebx
 80493b7:	5e                   	pop    %esi
 80493b8:	c3                   	ret    

080493b9 <skip>:
 80493b9:	53                   	push   %ebx
 80493ba:	83 ec 08             	sub    $0x8,%esp
 80493bd:	83 ec 04             	sub    $0x4,%esp
 80493c0:	ff 35 f0 d7 04 08    	pushl  0x804d7f0
 80493c6:	6a 50                	push   $0x50
 80493c8:	a1 ec d7 04 08       	mov    0x804d7ec,%eax
 80493cd:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80493d0:	c1 e0 04             	shl    $0x4,%eax
 80493d3:	05 00 d8 04 08       	add    $0x804d800,%eax
 80493d8:	50                   	push   %eax
 80493d9:	e8 e2 f3 ff ff       	call   80487c0 <fgets@plt>
 80493de:	89 c3                	mov    %eax,%ebx
 80493e0:	83 c4 10             	add    $0x10,%esp
 80493e3:	85 c0                	test   %eax,%eax
 80493e5:	74 10                	je     80493f7 <skip+0x3e>
 80493e7:	83 ec 0c             	sub    $0xc,%esp
 80493ea:	50                   	push   %eax
 80493eb:	e8 91 ff ff ff       	call   8049381 <blank_line>
 80493f0:	83 c4 10             	add    $0x10,%esp
 80493f3:	85 c0                	test   %eax,%eax
 80493f5:	75 c6                	jne    80493bd <skip+0x4>
 80493f7:	89 d8                	mov    %ebx,%eax
 80493f9:	83 c4 08             	add    $0x8,%esp
 80493fc:	5b                   	pop    %ebx
 80493fd:	c3                   	ret    

080493fe <send_msg>:
 80493fe:	57                   	push   %edi
 80493ff:	53                   	push   %ebx
 8049400:	81 ec 14 40 00 00    	sub    $0x4014,%esp
 8049406:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804940c:	89 84 24 0c 40 00 00 	mov    %eax,0x400c(%esp)
 8049413:	31 c0                	xor    %eax,%eax
 8049415:	8b 1d ec d7 04 08    	mov    0x804d7ec,%ebx
 804941b:	8d 54 9b fb          	lea    -0x5(%ebx,%ebx,4),%edx
 804941f:	c1 e2 04             	shl    $0x4,%edx
 8049422:	81 c2 00 d8 04 08    	add    $0x804d800,%edx
 8049428:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804942d:	89 d7                	mov    %edx,%edi
 804942f:	f2 ae                	repnz scas %es:(%edi),%al
 8049431:	f7 d1                	not    %ecx
 8049433:	83 c1 63             	add    $0x63,%ecx
 8049436:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 804943c:	76 1b                	jbe    8049459 <send_msg+0x5b>
 804943e:	83 ec 08             	sub    $0x8,%esp
 8049441:	68 68 a5 04 08       	push   $0x804a568
 8049446:	6a 01                	push   $0x1
 8049448:	e8 93 f4 ff ff       	call   80488e0 <__printf_chk@plt>
 804944d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049454:	e8 17 f4 ff ff       	call   8048870 <exit@plt>
 8049459:	83 bc 24 20 40 00 00 	cmpl   $0x0,0x4020(%esp)
 8049460:	00 
 8049461:	b9 60 a6 04 08       	mov    $0x804a660,%ecx
 8049466:	b8 58 a6 04 08       	mov    $0x804a658,%eax
 804946b:	0f 44 c1             	cmove  %ecx,%eax
 804946e:	52                   	push   %edx
 804946f:	53                   	push   %ebx
 8049470:	50                   	push   %eax
 8049471:	ff 35 a0 d5 04 08    	pushl  0x804d5a0
 8049477:	68 69 a6 04 08       	push   $0x804a669
 804947c:	68 00 20 00 00       	push   $0x2000
 8049481:	6a 01                	push   $0x1
 8049483:	8d 5c 24 28          	lea    0x28(%esp),%ebx
 8049487:	53                   	push   %ebx
 8049488:	e8 d3 f4 ff ff       	call   8048960 <__sprintf_chk@plt>
 804948d:	83 c4 20             	add    $0x20,%esp
 8049490:	8d 84 24 0c 20 00 00 	lea    0x200c(%esp),%eax
 8049497:	50                   	push   %eax
 8049498:	6a 00                	push   $0x0
 804949a:	53                   	push   %ebx
 804949b:	68 a0 d1 04 08       	push   $0x804d1a0
 80494a0:	e8 b0 0c 00 00       	call   804a155 <driver_post>
 80494a5:	83 c4 10             	add    $0x10,%esp
 80494a8:	85 c0                	test   %eax,%eax
 80494aa:	79 1c                	jns    80494c8 <send_msg+0xca>
 80494ac:	83 ec 0c             	sub    $0xc,%esp
 80494af:	8d 84 24 18 20 00 00 	lea    0x2018(%esp),%eax
 80494b6:	50                   	push   %eax
 80494b7:	e8 94 f3 ff ff       	call   8048850 <puts@plt>
 80494bc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80494c3:	e8 a8 f3 ff ff       	call   8048870 <exit@plt>
 80494c8:	8b 84 24 0c 40 00 00 	mov    0x400c(%esp),%eax
 80494cf:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80494d6:	74 05                	je     80494dd <send_msg+0xdf>
 80494d8:	e8 23 f3 ff ff       	call   8048800 <__stack_chk_fail@plt>
 80494dd:	81 c4 14 40 00 00    	add    $0x4014,%esp
 80494e3:	5b                   	pop    %ebx
 80494e4:	5f                   	pop    %edi
 80494e5:	c3                   	ret    

080494e6 <explode_bomb>:
 80494e6:	83 ec 18             	sub    $0x18,%esp
 80494e9:	68 75 a6 04 08       	push   $0x804a675
 80494ee:	e8 5d f3 ff ff       	call   8048850 <puts@plt>
 80494f3:	c7 04 24 7e a6 04 08 	movl   $0x804a67e,(%esp)
 80494fa:	e8 51 f3 ff ff       	call   8048850 <puts@plt>
 80494ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049506:	e8 f3 fe ff ff       	call   80493fe <send_msg>
 804950b:	c7 04 24 8c a5 04 08 	movl   $0x804a58c,(%esp)
 8049512:	e8 39 f3 ff ff       	call   8048850 <puts@plt>
 8049517:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804951e:	e8 4d f3 ff ff       	call   8048870 <exit@plt>

08049523 <read_six_numbers>:
 8049523:	83 ec 0c             	sub    $0xc,%esp
 8049526:	8b 44 24 14          	mov    0x14(%esp),%eax
 804952a:	8d 50 14             	lea    0x14(%eax),%edx
 804952d:	52                   	push   %edx
 804952e:	8d 50 10             	lea    0x10(%eax),%edx
 8049531:	52                   	push   %edx
 8049532:	8d 50 0c             	lea    0xc(%eax),%edx
 8049535:	52                   	push   %edx
 8049536:	8d 50 08             	lea    0x8(%eax),%edx
 8049539:	52                   	push   %edx
 804953a:	8d 50 04             	lea    0x4(%eax),%edx
 804953d:	52                   	push   %edx
 804953e:	50                   	push   %eax
 804953f:	68 95 a6 04 08       	push   $0x804a695
 8049544:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049548:	e8 63 f3 ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 804954d:	83 c4 20             	add    $0x20,%esp
 8049550:	83 f8 05             	cmp    $0x5,%eax
 8049553:	7f 05                	jg     804955a <read_six_numbers+0x37>
 8049555:	e8 8c ff ff ff       	call   80494e6 <explode_bomb>
 804955a:	83 c4 0c             	add    $0xc,%esp
 804955d:	c3                   	ret    

0804955e <read_line>:
 804955e:	57                   	push   %edi
 804955f:	56                   	push   %esi
 8049560:	53                   	push   %ebx
 8049561:	e8 53 fe ff ff       	call   80493b9 <skip>
 8049566:	85 c0                	test   %eax,%eax
 8049568:	75 70                	jne    80495da <read_line+0x7c>
 804956a:	a1 e0 d7 04 08       	mov    0x804d7e0,%eax
 804956f:	39 05 f0 d7 04 08    	cmp    %eax,0x804d7f0
 8049575:	75 19                	jne    8049590 <read_line+0x32>
 8049577:	83 ec 0c             	sub    $0xc,%esp
 804957a:	68 a7 a6 04 08       	push   $0x804a6a7
 804957f:	e8 cc f2 ff ff       	call   8048850 <puts@plt>
 8049584:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804958b:	e8 e0 f2 ff ff       	call   8048870 <exit@plt>
 8049590:	83 ec 0c             	sub    $0xc,%esp
 8049593:	68 c5 a6 04 08       	push   $0x804a6c5
 8049598:	e8 93 f2 ff ff       	call   8048830 <getenv@plt>
 804959d:	83 c4 10             	add    $0x10,%esp
 80495a0:	85 c0                	test   %eax,%eax
 80495a2:	74 0a                	je     80495ae <read_line+0x50>
 80495a4:	83 ec 0c             	sub    $0xc,%esp
 80495a7:	6a 00                	push   $0x0
 80495a9:	e8 c2 f2 ff ff       	call   8048870 <exit@plt>
 80495ae:	a1 e0 d7 04 08       	mov    0x804d7e0,%eax
 80495b3:	a3 f0 d7 04 08       	mov    %eax,0x804d7f0
 80495b8:	e8 fc fd ff ff       	call   80493b9 <skip>
 80495bd:	85 c0                	test   %eax,%eax
 80495bf:	75 19                	jne    80495da <read_line+0x7c>
 80495c1:	83 ec 0c             	sub    $0xc,%esp
 80495c4:	68 a7 a6 04 08       	push   $0x804a6a7
 80495c9:	e8 82 f2 ff ff       	call   8048850 <puts@plt>
 80495ce:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80495d5:	e8 96 f2 ff ff       	call   8048870 <exit@plt>
 80495da:	8b 15 ec d7 04 08    	mov    0x804d7ec,%edx
 80495e0:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 80495e3:	c1 e3 04             	shl    $0x4,%ebx
 80495e6:	81 c3 00 d8 04 08    	add    $0x804d800,%ebx
 80495ec:	b8 00 00 00 00       	mov    $0x0,%eax
 80495f1:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80495f6:	89 df                	mov    %ebx,%edi
 80495f8:	f2 ae                	repnz scas %es:(%edi),%al
 80495fa:	f7 d1                	not    %ecx
 80495fc:	83 e9 01             	sub    $0x1,%ecx
 80495ff:	83 f9 4e             	cmp    $0x4e,%ecx
 8049602:	7e 36                	jle    804963a <read_line+0xdc>
 8049604:	83 ec 0c             	sub    $0xc,%esp
 8049607:	68 d0 a6 04 08       	push   $0x804a6d0
 804960c:	e8 3f f2 ff ff       	call   8048850 <puts@plt>
 8049611:	a1 ec d7 04 08       	mov    0x804d7ec,%eax
 8049616:	8d 50 01             	lea    0x1(%eax),%edx
 8049619:	89 15 ec d7 04 08    	mov    %edx,0x804d7ec
 804961f:	6b c0 50             	imul   $0x50,%eax,%eax
 8049622:	05 00 d8 04 08       	add    $0x804d800,%eax
 8049627:	be eb a6 04 08       	mov    $0x804a6eb,%esi
 804962c:	b9 04 00 00 00       	mov    $0x4,%ecx
 8049631:	89 c7                	mov    %eax,%edi
 8049633:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049635:	e8 ac fe ff ff       	call   80494e6 <explode_bomb>
 804963a:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804963d:	c1 e0 04             	shl    $0x4,%eax
 8049640:	c6 84 01 ff d7 04 08 	movb   $0x0,0x804d7ff(%ecx,%eax,1)
 8049647:	00 
 8049648:	83 c2 01             	add    $0x1,%edx
 804964b:	89 15 ec d7 04 08    	mov    %edx,0x804d7ec
 8049651:	89 d8                	mov    %ebx,%eax
 8049653:	5b                   	pop    %ebx
 8049654:	5e                   	pop    %esi
 8049655:	5f                   	pop    %edi
 8049656:	c3                   	ret    

08049657 <phase_defused>:
 8049657:	83 ec 18             	sub    $0x18,%esp
 804965a:	6a 01                	push   $0x1
 804965c:	e8 9d fd ff ff       	call   80493fe <send_msg>
 8049661:	83 c4 10             	add    $0x10,%esp
 8049664:	83 3d ec d7 04 08 09 	cmpl   $0x9,0x804d7ec
 804966b:	75 1c                	jne    8049689 <phase_defused+0x32>
 804966d:	83 ec 0c             	sub    $0xc,%esp
 8049670:	68 b0 a5 04 08       	push   $0x804a5b0
 8049675:	e8 d6 f1 ff ff       	call   8048850 <puts@plt>
 804967a:	c7 04 24 dc a5 04 08 	movl   $0x804a5dc,(%esp)
 8049681:	e8 ca f1 ff ff       	call   8048850 <puts@plt>
 8049686:	83 c4 10             	add    $0x10,%esp
 8049689:	83 c4 0c             	add    $0xc,%esp
 804968c:	c3                   	ret    

0804968d <sigalrm_handler>:
 804968d:	83 ec 0c             	sub    $0xc,%esp
 8049690:	6a 00                	push   $0x0
 8049692:	68 00 ab 04 08       	push   $0x804ab00
 8049697:	6a 01                	push   $0x1
 8049699:	ff 35 c0 d7 04 08    	pushl  0x804d7c0
 804969f:	e8 5c f2 ff ff       	call   8048900 <__fprintf_chk@plt>
 80496a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80496ab:	e8 c0 f1 ff ff       	call   8048870 <exit@plt>

080496b0 <rio_readlineb>:
 80496b0:	55                   	push   %ebp
 80496b1:	57                   	push   %edi
 80496b2:	56                   	push   %esi
 80496b3:	53                   	push   %ebx
 80496b4:	83 ec 2c             	sub    $0x2c,%esp
 80496b7:	89 d7                	mov    %edx,%edi
 80496b9:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 80496bd:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 80496c4:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 80496c8:	31 d2                	xor    %edx,%edx
 80496ca:	83 f9 01             	cmp    $0x1,%ecx
 80496cd:	76 79                	jbe    8049748 <rio_readlineb+0x98>
 80496cf:	89 c3                	mov    %eax,%ebx
 80496d1:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80496d5:	bd 01 00 00 00       	mov    $0x1,%ebp
 80496da:	8d 73 0c             	lea    0xc(%ebx),%esi
 80496dd:	eb 2d                	jmp    804970c <rio_readlineb+0x5c>
 80496df:	83 ec 04             	sub    $0x4,%esp
 80496e2:	68 00 20 00 00       	push   $0x2000
 80496e7:	56                   	push   %esi
 80496e8:	ff 33                	pushl  (%ebx)
 80496ea:	e8 b1 f0 ff ff       	call   80487a0 <read@plt>
 80496ef:	89 43 04             	mov    %eax,0x4(%ebx)
 80496f2:	83 c4 10             	add    $0x10,%esp
 80496f5:	85 c0                	test   %eax,%eax
 80496f7:	79 0c                	jns    8049705 <rio_readlineb+0x55>
 80496f9:	e8 d2 f1 ff ff       	call   80488d0 <__errno_location@plt>
 80496fe:	83 38 04             	cmpl   $0x4,(%eax)
 8049701:	74 09                	je     804970c <rio_readlineb+0x5c>
 8049703:	eb 62                	jmp    8049767 <rio_readlineb+0xb7>
 8049705:	85 c0                	test   %eax,%eax
 8049707:	74 63                	je     804976c <rio_readlineb+0xbc>
 8049709:	89 73 08             	mov    %esi,0x8(%ebx)
 804970c:	8b 43 04             	mov    0x4(%ebx),%eax
 804970f:	85 c0                	test   %eax,%eax
 8049711:	7e cc                	jle    80496df <rio_readlineb+0x2f>
 8049713:	8b 4b 08             	mov    0x8(%ebx),%ecx
 8049716:	0f b6 11             	movzbl (%ecx),%edx
 8049719:	88 54 24 1b          	mov    %dl,0x1b(%esp)
 804971d:	83 c1 01             	add    $0x1,%ecx
 8049720:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8049723:	83 e8 01             	sub    $0x1,%eax
 8049726:	89 43 04             	mov    %eax,0x4(%ebx)
 8049729:	83 c7 01             	add    $0x1,%edi
 804972c:	88 57 ff             	mov    %dl,-0x1(%edi)
 804972f:	80 fa 0a             	cmp    $0xa,%dl
 8049732:	75 09                	jne    804973d <rio_readlineb+0x8d>
 8049734:	eb 1d                	jmp    8049753 <rio_readlineb+0xa3>
 8049736:	83 fd 01             	cmp    $0x1,%ebp
 8049739:	75 18                	jne    8049753 <rio_readlineb+0xa3>
 804973b:	eb 1b                	jmp    8049758 <rio_readlineb+0xa8>
 804973d:	83 c5 01             	add    $0x1,%ebp
 8049740:	3b 6c 24 08          	cmp    0x8(%esp),%ebp
 8049744:	74 09                	je     804974f <rio_readlineb+0x9f>
 8049746:	eb c4                	jmp    804970c <rio_readlineb+0x5c>
 8049748:	bd 01 00 00 00       	mov    $0x1,%ebp
 804974d:	eb 04                	jmp    8049753 <rio_readlineb+0xa3>
 804974f:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
 8049753:	c6 07 00             	movb   $0x0,(%edi)
 8049756:	89 e8                	mov    %ebp,%eax
 8049758:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804975c:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049763:	74 17                	je     804977c <rio_readlineb+0xcc>
 8049765:	eb 10                	jmp    8049777 <rio_readlineb+0xc7>
 8049767:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804976c:	85 c0                	test   %eax,%eax
 804976e:	74 c6                	je     8049736 <rio_readlineb+0x86>
 8049770:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049775:	eb e1                	jmp    8049758 <rio_readlineb+0xa8>
 8049777:	e8 84 f0 ff ff       	call   8048800 <__stack_chk_fail@plt>
 804977c:	83 c4 2c             	add    $0x2c,%esp
 804977f:	5b                   	pop    %ebx
 8049780:	5e                   	pop    %esi
 8049781:	5f                   	pop    %edi
 8049782:	5d                   	pop    %ebp
 8049783:	c3                   	ret    

08049784 <submitr>:
 8049784:	55                   	push   %ebp
 8049785:	57                   	push   %edi
 8049786:	56                   	push   %esi
 8049787:	53                   	push   %ebx
 8049788:	81 ec 60 a0 00 00    	sub    $0xa060,%esp
 804978e:	8b b4 24 74 a0 00 00 	mov    0xa074(%esp),%esi
 8049795:	8b 84 24 7c a0 00 00 	mov    0xa07c(%esp),%eax
 804979c:	89 44 24 10          	mov    %eax,0x10(%esp)
 80497a0:	8b 84 24 80 a0 00 00 	mov    0xa080(%esp),%eax
 80497a7:	89 44 24 14          	mov    %eax,0x14(%esp)
 80497ab:	8b 84 24 84 a0 00 00 	mov    0xa084(%esp),%eax
 80497b2:	89 44 24 18          	mov    %eax,0x18(%esp)
 80497b6:	8b 9c 24 88 a0 00 00 	mov    0xa088(%esp),%ebx
 80497bd:	8b 84 24 8c a0 00 00 	mov    0xa08c(%esp),%eax
 80497c4:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80497c8:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80497ce:	89 84 24 50 a0 00 00 	mov    %eax,0xa050(%esp)
 80497d5:	31 c0                	xor    %eax,%eax
 80497d7:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 80497de:	00 
 80497df:	6a 00                	push   $0x0
 80497e1:	6a 01                	push   $0x1
 80497e3:	6a 02                	push   $0x2
 80497e5:	e8 06 f1 ff ff       	call   80488f0 <socket@plt>
 80497ea:	89 44 24 18          	mov    %eax,0x18(%esp)
 80497ee:	83 c4 10             	add    $0x10,%esp
 80497f1:	85 c0                	test   %eax,%eax
 80497f3:	79 52                	jns    8049847 <submitr+0xc3>
 80497f5:	8b 44 24 18          	mov    0x18(%esp),%eax
 80497f9:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80497ff:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049806:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804980d:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049814:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804981b:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049822:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049829:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 8049830:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049837:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804983d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049842:	e9 3f 06 00 00       	jmp    8049e86 <submitr+0x702>
 8049847:	83 ec 0c             	sub    $0xc,%esp
 804984a:	56                   	push   %esi
 804984b:	e8 c0 f0 ff ff       	call   8048910 <gethostbyname@plt>
 8049850:	83 c4 10             	add    $0x10,%esp
 8049853:	85 c0                	test   %eax,%eax
 8049855:	75 73                	jne    80498ca <submitr+0x146>
 8049857:	8b 44 24 18          	mov    0x18(%esp),%eax
 804985b:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049861:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 8049868:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 804986f:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 8049876:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804987d:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049884:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 804988b:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 8049892:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 8049899:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 80498a0:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 80498a7:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 80498ad:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 80498b1:	83 ec 0c             	sub    $0xc,%esp
 80498b4:	ff 74 24 14          	pushl  0x14(%esp)
 80498b8:	e8 83 f0 ff ff       	call   8048940 <close@plt>
 80498bd:	83 c4 10             	add    $0x10,%esp
 80498c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498c5:	e9 bc 05 00 00       	jmp    8049e86 <submitr+0x702>
 80498ca:	8d 74 24 30          	lea    0x30(%esp),%esi
 80498ce:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 80498d5:	00 
 80498d6:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 80498dd:	00 
 80498de:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 80498e5:	00 
 80498e6:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
 80498ed:	00 
 80498ee:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%esp)
 80498f5:	6a 0c                	push   $0xc
 80498f7:	ff 70 0c             	pushl  0xc(%eax)
 80498fa:	8b 40 10             	mov    0x10(%eax),%eax
 80498fd:	ff 30                	pushl  (%eax)
 80498ff:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049903:	50                   	push   %eax
 8049904:	e8 57 ef ff ff       	call   8048860 <__memmove_chk@plt>
 8049909:	0f b7 84 24 84 a0 00 	movzwl 0xa084(%esp),%eax
 8049910:	00 
 8049911:	66 c1 c8 08          	ror    $0x8,%ax
 8049915:	66 89 44 24 42       	mov    %ax,0x42(%esp)
 804991a:	83 c4 0c             	add    $0xc,%esp
 804991d:	6a 10                	push   $0x10
 804991f:	56                   	push   %esi
 8049920:	ff 74 24 14          	pushl  0x14(%esp)
 8049924:	e8 07 f0 ff ff       	call   8048930 <connect@plt>
 8049929:	83 c4 10             	add    $0x10,%esp
 804992c:	85 c0                	test   %eax,%eax
 804992e:	79 65                	jns    8049995 <submitr+0x211>
 8049930:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049934:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804993a:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
 8049941:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
 8049948:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
 804994f:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
 8049956:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
 804995d:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
 8049964:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
 804996b:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 8049972:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
 8049978:	c6 40 26 00          	movb   $0x0,0x26(%eax)
 804997c:	83 ec 0c             	sub    $0xc,%esp
 804997f:	ff 74 24 14          	pushl  0x14(%esp)
 8049983:	e8 b8 ef ff ff       	call   8048940 <close@plt>
 8049988:	83 c4 10             	add    $0x10,%esp
 804998b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049990:	e9 f1 04 00 00       	jmp    8049e86 <submitr+0x702>
 8049995:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804999a:	b8 00 00 00 00       	mov    $0x0,%eax
 804999f:	89 f1                	mov    %esi,%ecx
 80499a1:	89 df                	mov    %ebx,%edi
 80499a3:	f2 ae                	repnz scas %es:(%edi),%al
 80499a5:	f7 d1                	not    %ecx
 80499a7:	89 cd                	mov    %ecx,%ebp
 80499a9:	89 f1                	mov    %esi,%ecx
 80499ab:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 80499af:	f2 ae                	repnz scas %es:(%edi),%al
 80499b1:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 80499b5:	89 f1                	mov    %esi,%ecx
 80499b7:	8b 7c 24 10          	mov    0x10(%esp),%edi
 80499bb:	f2 ae                	repnz scas %es:(%edi),%al
 80499bd:	89 ca                	mov    %ecx,%edx
 80499bf:	f7 d2                	not    %edx
 80499c1:	89 f1                	mov    %esi,%ecx
 80499c3:	8b 7c 24 14          	mov    0x14(%esp),%edi
 80499c7:	f2 ae                	repnz scas %es:(%edi),%al
 80499c9:	2b 54 24 1c          	sub    0x1c(%esp),%edx
 80499cd:	29 ca                	sub    %ecx,%edx
 80499cf:	8d 44 6d fd          	lea    -0x3(%ebp,%ebp,2),%eax
 80499d3:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 80499d7:	3d 00 20 00 00       	cmp    $0x2000,%eax
 80499dc:	76 7e                	jbe    8049a5c <submitr+0x2d8>
 80499de:	8b 44 24 18          	mov    0x18(%esp),%eax
 80499e2:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80499e8:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 80499ef:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 80499f6:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 80499fd:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049a04:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049a0b:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049a12:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049a19:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 8049a20:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049a27:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049a2e:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049a35:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049a3c:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 8049a43:	83 ec 0c             	sub    $0xc,%esp
 8049a46:	ff 74 24 14          	pushl  0x14(%esp)
 8049a4a:	e8 f1 ee ff ff       	call   8048940 <close@plt>
 8049a4f:	83 c4 10             	add    $0x10,%esp
 8049a52:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a57:	e9 2a 04 00 00       	jmp    8049e86 <submitr+0x702>
 8049a5c:	8d 94 24 4c 40 00 00 	lea    0x404c(%esp),%edx
 8049a63:	b9 00 08 00 00       	mov    $0x800,%ecx
 8049a68:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a6d:	89 d7                	mov    %edx,%edi
 8049a6f:	f3 ab                	rep stos %eax,%es:(%edi)
 8049a71:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a76:	89 df                	mov    %ebx,%edi
 8049a78:	f2 ae                	repnz scas %es:(%edi),%al
 8049a7a:	f7 d1                	not    %ecx
 8049a7c:	89 ce                	mov    %ecx,%esi
 8049a7e:	83 ee 01             	sub    $0x1,%esi
 8049a81:	0f 84 5c 04 00 00    	je     8049ee3 <submitr+0x75f>
 8049a87:	89 d5                	mov    %edx,%ebp
 8049a89:	bf d9 ff 00 00       	mov    $0xffd9,%edi
 8049a8e:	0f b6 13             	movzbl (%ebx),%edx
 8049a91:	8d 4a d6             	lea    -0x2a(%edx),%ecx
 8049a94:	b8 01 00 00 00       	mov    $0x1,%eax
 8049a99:	80 f9 0f             	cmp    $0xf,%cl
 8049a9c:	77 0a                	ja     8049aa8 <submitr+0x324>
 8049a9e:	89 f8                	mov    %edi,%eax
 8049aa0:	d3 e8                	shr    %cl,%eax
 8049aa2:	83 f0 01             	xor    $0x1,%eax
 8049aa5:	83 e0 01             	and    $0x1,%eax
 8049aa8:	80 fa 5f             	cmp    $0x5f,%dl
 8049aab:	0f 94 c1             	sete   %cl
 8049aae:	38 c1                	cmp    %al,%cl
 8049ab0:	73 0c                	jae    8049abe <submitr+0x33a>
 8049ab2:	89 d0                	mov    %edx,%eax
 8049ab4:	83 e0 df             	and    $0xffffffdf,%eax
 8049ab7:	83 e8 41             	sub    $0x41,%eax
 8049aba:	3c 19                	cmp    $0x19,%al
 8049abc:	77 08                	ja     8049ac6 <submitr+0x342>
 8049abe:	88 55 00             	mov    %dl,0x0(%ebp)
 8049ac1:	8d 6d 01             	lea    0x1(%ebp),%ebp
 8049ac4:	eb 62                	jmp    8049b28 <submitr+0x3a4>
 8049ac6:	80 fa 20             	cmp    $0x20,%dl
 8049ac9:	75 09                	jne    8049ad4 <submitr+0x350>
 8049acb:	c6 45 00 2b          	movb   $0x2b,0x0(%ebp)
 8049acf:	8d 6d 01             	lea    0x1(%ebp),%ebp
 8049ad2:	eb 54                	jmp    8049b28 <submitr+0x3a4>
 8049ad4:	8d 42 e0             	lea    -0x20(%edx),%eax
 8049ad7:	3c 5f                	cmp    $0x5f,%al
 8049ad9:	76 09                	jbe    8049ae4 <submitr+0x360>
 8049adb:	80 fa 09             	cmp    $0x9,%dl
 8049ade:	0f 85 bb 03 00 00    	jne    8049e9f <submitr+0x71b>
 8049ae4:	83 ec 0c             	sub    $0xc,%esp
 8049ae7:	0f b6 d2             	movzbl %dl,%edx
 8049aea:	52                   	push   %edx
 8049aeb:	68 0c ac 04 08       	push   $0x804ac0c
 8049af0:	6a 08                	push   $0x8
 8049af2:	6a 01                	push   $0x1
 8049af4:	8d 84 24 68 80 00 00 	lea    0x8068(%esp),%eax
 8049afb:	50                   	push   %eax
 8049afc:	e8 5f ee ff ff       	call   8048960 <__sprintf_chk@plt>
 8049b01:	0f b6 84 24 6c 80 00 	movzbl 0x806c(%esp),%eax
 8049b08:	00 
 8049b09:	88 45 00             	mov    %al,0x0(%ebp)
 8049b0c:	0f b6 84 24 6d 80 00 	movzbl 0x806d(%esp),%eax
 8049b13:	00 
 8049b14:	88 45 01             	mov    %al,0x1(%ebp)
 8049b17:	0f b6 84 24 6e 80 00 	movzbl 0x806e(%esp),%eax
 8049b1e:	00 
 8049b1f:	88 45 02             	mov    %al,0x2(%ebp)
 8049b22:	83 c4 20             	add    $0x20,%esp
 8049b25:	8d 6d 03             	lea    0x3(%ebp),%ebp
 8049b28:	83 c3 01             	add    $0x1,%ebx
 8049b2b:	83 ee 01             	sub    $0x1,%esi
 8049b2e:	0f 85 5a ff ff ff    	jne    8049a8e <submitr+0x30a>
 8049b34:	e9 aa 03 00 00       	jmp    8049ee3 <submitr+0x75f>
 8049b39:	83 ec 04             	sub    $0x4,%esp
 8049b3c:	53                   	push   %ebx
 8049b3d:	56                   	push   %esi
 8049b3e:	55                   	push   %ebp
 8049b3f:	e8 4c ed ff ff       	call   8048890 <write@plt>
 8049b44:	83 c4 10             	add    $0x10,%esp
 8049b47:	85 c0                	test   %eax,%eax
 8049b49:	7f 0f                	jg     8049b5a <submitr+0x3d6>
 8049b4b:	e8 80 ed ff ff       	call   80488d0 <__errno_location@plt>
 8049b50:	83 38 04             	cmpl   $0x4,(%eax)
 8049b53:	75 0f                	jne    8049b64 <submitr+0x3e0>
 8049b55:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b5a:	01 c6                	add    %eax,%esi
 8049b5c:	29 c3                	sub    %eax,%ebx
 8049b5e:	75 d9                	jne    8049b39 <submitr+0x3b5>
 8049b60:	85 ff                	test   %edi,%edi
 8049b62:	79 69                	jns    8049bcd <submitr+0x449>
 8049b64:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049b68:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049b6e:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049b75:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049b7c:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049b83:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049b8a:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049b91:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 8049b98:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 8049b9f:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 8049ba6:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 8049bad:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 8049bb4:	83 ec 0c             	sub    $0xc,%esp
 8049bb7:	ff 74 24 14          	pushl  0x14(%esp)
 8049bbb:	e8 80 ed ff ff       	call   8048940 <close@plt>
 8049bc0:	83 c4 10             	add    $0x10,%esp
 8049bc3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049bc8:	e9 b9 02 00 00       	jmp    8049e86 <submitr+0x702>
 8049bcd:	8b 44 24 08          	mov    0x8(%esp),%eax
 8049bd1:	89 44 24 40          	mov    %eax,0x40(%esp)
 8049bd5:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 8049bdc:	00 
 8049bdd:	8d 44 24 4c          	lea    0x4c(%esp),%eax
 8049be1:	89 44 24 48          	mov    %eax,0x48(%esp)
 8049be5:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049bea:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 8049bf1:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049bf5:	e8 b6 fa ff ff       	call   80496b0 <rio_readlineb>
 8049bfa:	85 c0                	test   %eax,%eax
 8049bfc:	7f 7d                	jg     8049c7b <submitr+0x4f7>
 8049bfe:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049c02:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049c08:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049c0f:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049c16:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049c1d:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049c24:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049c2b:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049c32:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 8049c39:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 8049c40:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 8049c47:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 8049c4e:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 8049c55:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 8049c5c:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 8049c62:	83 ec 0c             	sub    $0xc,%esp
 8049c65:	ff 74 24 14          	pushl  0x14(%esp)
 8049c69:	e8 d2 ec ff ff       	call   8048940 <close@plt>
 8049c6e:	83 c4 10             	add    $0x10,%esp
 8049c71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c76:	e9 0b 02 00 00       	jmp    8049e86 <submitr+0x702>
 8049c7b:	83 ec 0c             	sub    $0xc,%esp
 8049c7e:	8d 84 24 58 80 00 00 	lea    0x8058(%esp),%eax
 8049c85:	50                   	push   %eax
 8049c86:	8d 44 24 3c          	lea    0x3c(%esp),%eax
 8049c8a:	50                   	push   %eax
 8049c8b:	8d 84 24 60 60 00 00 	lea    0x6060(%esp),%eax
 8049c92:	50                   	push   %eax
 8049c93:	68 13 ac 04 08       	push   $0x804ac13
 8049c98:	8d 84 24 68 20 00 00 	lea    0x2068(%esp),%eax
 8049c9f:	50                   	push   %eax
 8049ca0:	e8 0b ec ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 8049ca5:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 8049ca9:	83 c4 20             	add    $0x20,%esp
 8049cac:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049cb1:	0f 84 c4 00 00 00    	je     8049d7b <submitr+0x5f7>
 8049cb7:	83 ec 08             	sub    $0x8,%esp
 8049cba:	8d 94 24 54 80 00 00 	lea    0x8054(%esp),%edx
 8049cc1:	52                   	push   %edx
 8049cc2:	50                   	push   %eax
 8049cc3:	68 24 ab 04 08       	push   $0x804ab24
 8049cc8:	6a ff                	push   $0xffffffff
 8049cca:	6a 01                	push   $0x1
 8049ccc:	ff 74 24 34          	pushl  0x34(%esp)
 8049cd0:	e8 8b ec ff ff       	call   8048960 <__sprintf_chk@plt>
 8049cd5:	83 c4 14             	add    $0x14,%esp
 8049cd8:	ff 74 24 14          	pushl  0x14(%esp)
 8049cdc:	e8 5f ec ff ff       	call   8048940 <close@plt>
 8049ce1:	83 c4 10             	add    $0x10,%esp
 8049ce4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ce9:	e9 98 01 00 00       	jmp    8049e86 <submitr+0x702>
 8049cee:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049cf3:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 8049cfa:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049cfe:	e8 ad f9 ff ff       	call   80496b0 <rio_readlineb>
 8049d03:	85 c0                	test   %eax,%eax
 8049d05:	7f 74                	jg     8049d7b <submitr+0x5f7>
 8049d07:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049d0b:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049d11:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049d18:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049d1f:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049d26:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049d2d:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049d34:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049d3b:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 8049d42:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 8049d49:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 8049d50:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 8049d57:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 8049d5e:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 8049d62:	83 ec 0c             	sub    $0xc,%esp
 8049d65:	ff 74 24 14          	pushl  0x14(%esp)
 8049d69:	e8 d2 eb ff ff       	call   8048940 <close@plt>
 8049d6e:	83 c4 10             	add    $0x10,%esp
 8049d71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d76:	e9 0b 01 00 00       	jmp    8049e86 <submitr+0x702>
 8049d7b:	80 bc 24 4c 20 00 00 	cmpb   $0xd,0x204c(%esp)
 8049d82:	0d 
 8049d83:	0f 85 65 ff ff ff    	jne    8049cee <submitr+0x56a>
 8049d89:	80 bc 24 4d 20 00 00 	cmpb   $0xa,0x204d(%esp)
 8049d90:	0a 
 8049d91:	0f 85 57 ff ff ff    	jne    8049cee <submitr+0x56a>
 8049d97:	80 bc 24 4e 20 00 00 	cmpb   $0x0,0x204e(%esp)
 8049d9e:	00 
 8049d9f:	0f 85 49 ff ff ff    	jne    8049cee <submitr+0x56a>
 8049da5:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049daa:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 8049db1:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049db5:	e8 f6 f8 ff ff       	call   80496b0 <rio_readlineb>
 8049dba:	85 c0                	test   %eax,%eax
 8049dbc:	7f 7b                	jg     8049e39 <submitr+0x6b5>
 8049dbe:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049dc2:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049dc8:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049dcf:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049dd6:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049ddd:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049de4:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049deb:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049df2:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049df9:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049e00:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049e07:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049e0e:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049e15:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049e1c:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049e23:	83 ec 0c             	sub    $0xc,%esp
 8049e26:	ff 74 24 14          	pushl  0x14(%esp)
 8049e2a:	e8 11 eb ff ff       	call   8048940 <close@plt>
 8049e2f:	83 c4 10             	add    $0x10,%esp
 8049e32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e37:	eb 4d                	jmp    8049e86 <submitr+0x702>
 8049e39:	83 ec 08             	sub    $0x8,%esp
 8049e3c:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049e43:	50                   	push   %eax
 8049e44:	8b 7c 24 24          	mov    0x24(%esp),%edi
 8049e48:	57                   	push   %edi
 8049e49:	e8 c2 e9 ff ff       	call   8048810 <strcpy@plt>
 8049e4e:	83 c4 04             	add    $0x4,%esp
 8049e51:	ff 74 24 14          	pushl  0x14(%esp)
 8049e55:	e8 e6 ea ff ff       	call   8048940 <close@plt>
 8049e5a:	0f b6 17             	movzbl (%edi),%edx
 8049e5d:	b8 4f 00 00 00       	mov    $0x4f,%eax
 8049e62:	83 c4 10             	add    $0x10,%esp
 8049e65:	29 d0                	sub    %edx,%eax
 8049e67:	75 13                	jne    8049e7c <submitr+0x6f8>
 8049e69:	0f b6 57 01          	movzbl 0x1(%edi),%edx
 8049e6d:	b8 4b 00 00 00       	mov    $0x4b,%eax
 8049e72:	29 d0                	sub    %edx,%eax
 8049e74:	75 06                	jne    8049e7c <submitr+0x6f8>
 8049e76:	0f b6 47 02          	movzbl 0x2(%edi),%eax
 8049e7a:	f7 d8                	neg    %eax
 8049e7c:	85 c0                	test   %eax,%eax
 8049e7e:	0f 95 c0             	setne  %al
 8049e81:	0f b6 c0             	movzbl %al,%eax
 8049e84:	f7 d8                	neg    %eax
 8049e86:	8b bc 24 4c a0 00 00 	mov    0xa04c(%esp),%edi
 8049e8d:	65 33 3d 14 00 00 00 	xor    %gs:0x14,%edi
 8049e94:	0f 84 a9 00 00 00    	je     8049f43 <submitr+0x7bf>
 8049e9a:	e9 9f 00 00 00       	jmp    8049f3e <submitr+0x7ba>
 8049e9f:	a1 54 ab 04 08       	mov    0x804ab54,%eax
 8049ea4:	8b 7c 24 18          	mov    0x18(%esp),%edi
 8049ea8:	89 07                	mov    %eax,(%edi)
 8049eaa:	a1 93 ab 04 08       	mov    0x804ab93,%eax
 8049eaf:	89 47 3f             	mov    %eax,0x3f(%edi)
 8049eb2:	89 f8                	mov    %edi,%eax
 8049eb4:	83 c7 04             	add    $0x4,%edi
 8049eb7:	83 e7 fc             	and    $0xfffffffc,%edi
 8049eba:	29 f8                	sub    %edi,%eax
 8049ebc:	be 54 ab 04 08       	mov    $0x804ab54,%esi
 8049ec1:	29 c6                	sub    %eax,%esi
 8049ec3:	83 c0 43             	add    $0x43,%eax
 8049ec6:	c1 e8 02             	shr    $0x2,%eax
 8049ec9:	89 c1                	mov    %eax,%ecx
 8049ecb:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049ecd:	83 ec 0c             	sub    $0xc,%esp
 8049ed0:	ff 74 24 14          	pushl  0x14(%esp)
 8049ed4:	e8 67 ea ff ff       	call   8048940 <close@plt>
 8049ed9:	83 c4 10             	add    $0x10,%esp
 8049edc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ee1:	eb a3                	jmp    8049e86 <submitr+0x702>
 8049ee3:	8d 84 24 4c 40 00 00 	lea    0x404c(%esp),%eax
 8049eea:	50                   	push   %eax
 8049eeb:	ff 74 24 18          	pushl  0x18(%esp)
 8049eef:	ff 74 24 18          	pushl  0x18(%esp)
 8049ef3:	ff 74 24 18          	pushl  0x18(%esp)
 8049ef7:	68 98 ab 04 08       	push   $0x804ab98
 8049efc:	68 00 20 00 00       	push   $0x2000
 8049f01:	6a 01                	push   $0x1
 8049f03:	8d bc 24 68 20 00 00 	lea    0x2068(%esp),%edi
 8049f0a:	57                   	push   %edi
 8049f0b:	e8 50 ea ff ff       	call   8048960 <__sprintf_chk@plt>
 8049f10:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f15:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049f1a:	f2 ae                	repnz scas %es:(%edi),%al
 8049f1c:	f7 d1                	not    %ecx
 8049f1e:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049f21:	83 c4 20             	add    $0x20,%esp
 8049f24:	89 fb                	mov    %edi,%ebx
 8049f26:	8d b4 24 4c 20 00 00 	lea    0x204c(%esp),%esi
 8049f2d:	8b 6c 24 08          	mov    0x8(%esp),%ebp
 8049f31:	85 ff                	test   %edi,%edi
 8049f33:	0f 85 00 fc ff ff    	jne    8049b39 <submitr+0x3b5>
 8049f39:	e9 8f fc ff ff       	jmp    8049bcd <submitr+0x449>
 8049f3e:	e8 bd e8 ff ff       	call   8048800 <__stack_chk_fail@plt>
 8049f43:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049f49:	5b                   	pop    %ebx
 8049f4a:	5e                   	pop    %esi
 8049f4b:	5f                   	pop    %edi
 8049f4c:	5d                   	pop    %ebp
 8049f4d:	c3                   	ret    

08049f4e <init_timeout>:
 8049f4e:	53                   	push   %ebx
 8049f4f:	83 ec 08             	sub    $0x8,%esp
 8049f52:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8049f56:	85 db                	test   %ebx,%ebx
 8049f58:	74 24                	je     8049f7e <init_timeout+0x30>
 8049f5a:	83 ec 08             	sub    $0x8,%esp
 8049f5d:	68 8d 96 04 08       	push   $0x804968d
 8049f62:	6a 0e                	push   $0xe
 8049f64:	e8 67 e8 ff ff       	call   80487d0 <signal@plt>
 8049f69:	85 db                	test   %ebx,%ebx
 8049f6b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f70:	0f 48 d8             	cmovs  %eax,%ebx
 8049f73:	89 1c 24             	mov    %ebx,(%esp)
 8049f76:	e8 75 e8 ff ff       	call   80487f0 <alarm@plt>
 8049f7b:	83 c4 10             	add    $0x10,%esp
 8049f7e:	83 c4 08             	add    $0x8,%esp
 8049f81:	5b                   	pop    %ebx
 8049f82:	c3                   	ret    

08049f83 <init_driver>:
 8049f83:	57                   	push   %edi
 8049f84:	56                   	push   %esi
 8049f85:	53                   	push   %ebx
 8049f86:	83 ec 28             	sub    $0x28,%esp
 8049f89:	8b 74 24 38          	mov    0x38(%esp),%esi
 8049f8d:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049f93:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049f97:	31 c0                	xor    %eax,%eax
 8049f99:	6a 01                	push   $0x1
 8049f9b:	6a 0d                	push   $0xd
 8049f9d:	e8 2e e8 ff ff       	call   80487d0 <signal@plt>
 8049fa2:	83 c4 08             	add    $0x8,%esp
 8049fa5:	6a 01                	push   $0x1
 8049fa7:	6a 1d                	push   $0x1d
 8049fa9:	e8 22 e8 ff ff       	call   80487d0 <signal@plt>
 8049fae:	83 c4 08             	add    $0x8,%esp
 8049fb1:	6a 01                	push   $0x1
 8049fb3:	6a 1d                	push   $0x1d
 8049fb5:	e8 16 e8 ff ff       	call   80487d0 <signal@plt>
 8049fba:	83 c4 0c             	add    $0xc,%esp
 8049fbd:	6a 00                	push   $0x0
 8049fbf:	6a 01                	push   $0x1
 8049fc1:	6a 02                	push   $0x2
 8049fc3:	e8 28 e9 ff ff       	call   80488f0 <socket@plt>
 8049fc8:	83 c4 10             	add    $0x10,%esp
 8049fcb:	85 c0                	test   %eax,%eax
 8049fcd:	79 4e                	jns    804a01d <init_driver+0x9a>
 8049fcf:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049fd5:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049fdc:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049fe3:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049fea:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049ff1:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049ff8:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049fff:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 804a006:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 804a00d:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 804a013:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a018:	e9 1f 01 00 00       	jmp    804a13c <init_driver+0x1b9>
 804a01d:	89 c3                	mov    %eax,%ebx
 804a01f:	83 ec 0c             	sub    $0xc,%esp
 804a022:	68 cc aa 04 08       	push   $0x804aacc
 804a027:	e8 e4 e8 ff ff       	call   8048910 <gethostbyname@plt>
 804a02c:	83 c4 10             	add    $0x10,%esp
 804a02f:	85 c0                	test   %eax,%eax
 804a031:	75 6c                	jne    804a09f <init_driver+0x11c>
 804a033:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 804a039:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 804a040:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 804a047:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 804a04e:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 804a055:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 804a05c:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 804a063:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 804a06a:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 804a071:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 804a078:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 804a07f:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 804a085:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 804a089:	83 ec 0c             	sub    $0xc,%esp
 804a08c:	53                   	push   %ebx
 804a08d:	e8 ae e8 ff ff       	call   8048940 <close@plt>
 804a092:	83 c4 10             	add    $0x10,%esp
 804a095:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a09a:	e9 9d 00 00 00       	jmp    804a13c <init_driver+0x1b9>
 804a09f:	8d 7c 24 0c          	lea    0xc(%esp),%edi
 804a0a3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804a0aa:	00 
 804a0ab:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 804a0b2:	00 
 804a0b3:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 804a0ba:	00 
 804a0bb:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 804a0c2:	00 
 804a0c3:	66 c7 44 24 0c 02 00 	movw   $0x2,0xc(%esp)
 804a0ca:	6a 0c                	push   $0xc
 804a0cc:	ff 70 0c             	pushl  0xc(%eax)
 804a0cf:	8b 40 10             	mov    0x10(%eax),%eax
 804a0d2:	ff 30                	pushl  (%eax)
 804a0d4:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 804a0d8:	50                   	push   %eax
 804a0d9:	e8 82 e7 ff ff       	call   8048860 <__memmove_chk@plt>
 804a0de:	66 c7 44 24 1e 4b 01 	movw   $0x14b,0x1e(%esp)
 804a0e5:	83 c4 0c             	add    $0xc,%esp
 804a0e8:	6a 10                	push   $0x10
 804a0ea:	57                   	push   %edi
 804a0eb:	53                   	push   %ebx
 804a0ec:	e8 3f e8 ff ff       	call   8048930 <connect@plt>
 804a0f1:	83 c4 10             	add    $0x10,%esp
 804a0f4:	85 c0                	test   %eax,%eax
 804a0f6:	79 2a                	jns    804a122 <init_driver+0x19f>
 804a0f8:	83 ec 0c             	sub    $0xc,%esp
 804a0fb:	68 cc aa 04 08       	push   $0x804aacc
 804a100:	68 e4 ab 04 08       	push   $0x804abe4
 804a105:	6a ff                	push   $0xffffffff
 804a107:	6a 01                	push   $0x1
 804a109:	56                   	push   %esi
 804a10a:	e8 51 e8 ff ff       	call   8048960 <__sprintf_chk@plt>
 804a10f:	83 c4 14             	add    $0x14,%esp
 804a112:	53                   	push   %ebx
 804a113:	e8 28 e8 ff ff       	call   8048940 <close@plt>
 804a118:	83 c4 10             	add    $0x10,%esp
 804a11b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a120:	eb 1a                	jmp    804a13c <init_driver+0x1b9>
 804a122:	83 ec 0c             	sub    $0xc,%esp
 804a125:	53                   	push   %ebx
 804a126:	e8 15 e8 ff ff       	call   8048940 <close@plt>
 804a12b:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 804a130:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 804a134:	83 c4 10             	add    $0x10,%esp
 804a137:	b8 00 00 00 00       	mov    $0x0,%eax
 804a13c:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804a140:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804a147:	74 05                	je     804a14e <init_driver+0x1cb>
 804a149:	e8 b2 e6 ff ff       	call   8048800 <__stack_chk_fail@plt>
 804a14e:	83 c4 20             	add    $0x20,%esp
 804a151:	5b                   	pop    %ebx
 804a152:	5e                   	pop    %esi
 804a153:	5f                   	pop    %edi
 804a154:	c3                   	ret    

0804a155 <driver_post>:
 804a155:	53                   	push   %ebx
 804a156:	83 ec 08             	sub    $0x8,%esp
 804a159:	8b 44 24 10          	mov    0x10(%esp),%eax
 804a15d:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
 804a161:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 804a166:	74 26                	je     804a18e <driver_post+0x39>
 804a168:	83 ec 04             	sub    $0x4,%esp
 804a16b:	ff 74 24 18          	pushl  0x18(%esp)
 804a16f:	68 24 ac 04 08       	push   $0x804ac24
 804a174:	6a 01                	push   $0x1
 804a176:	e8 65 e7 ff ff       	call   80488e0 <__printf_chk@plt>
 804a17b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a180:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a184:	83 c4 10             	add    $0x10,%esp
 804a187:	b8 00 00 00 00       	mov    $0x0,%eax
 804a18c:	eb 3e                	jmp    804a1cc <driver_post+0x77>
 804a18e:	85 c0                	test   %eax,%eax
 804a190:	74 2c                	je     804a1be <driver_post+0x69>
 804a192:	80 38 00             	cmpb   $0x0,(%eax)
 804a195:	74 27                	je     804a1be <driver_post+0x69>
 804a197:	83 ec 04             	sub    $0x4,%esp
 804a19a:	53                   	push   %ebx
 804a19b:	ff 74 24 1c          	pushl  0x1c(%esp)
 804a19f:	68 3b ac 04 08       	push   $0x804ac3b
 804a1a4:	50                   	push   %eax
 804a1a5:	68 42 ac 04 08       	push   $0x804ac42
 804a1aa:	68 01 4b 00 00       	push   $0x4b01
 804a1af:	68 cc aa 04 08       	push   $0x804aacc
 804a1b4:	e8 cb f5 ff ff       	call   8049784 <submitr>
 804a1b9:	83 c4 20             	add    $0x20,%esp
 804a1bc:	eb 0e                	jmp    804a1cc <driver_post+0x77>
 804a1be:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a1c3:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a1c7:	b8 00 00 00 00       	mov    $0x0,%eax
 804a1cc:	83 c4 08             	add    $0x8,%esp
 804a1cf:	5b                   	pop    %ebx
 804a1d0:	c3                   	ret    
 804a1d1:	66 90                	xchg   %ax,%ax
 804a1d3:	66 90                	xchg   %ax,%ax
 804a1d5:	66 90                	xchg   %ax,%ax
 804a1d7:	66 90                	xchg   %ax,%ax
 804a1d9:	66 90                	xchg   %ax,%ax
 804a1db:	66 90                	xchg   %ax,%ax
 804a1dd:	66 90                	xchg   %ax,%ax
 804a1df:	90                   	nop

0804a1e0 <__libc_csu_init>:
 804a1e0:	55                   	push   %ebp
 804a1e1:	57                   	push   %edi
 804a1e2:	56                   	push   %esi
 804a1e3:	53                   	push   %ebx
 804a1e4:	e8 c7 e7 ff ff       	call   80489b0 <__x86.get_pc_thunk.bx>
 804a1e9:	81 c3 17 2e 00 00    	add    $0x2e17,%ebx
 804a1ef:	83 ec 0c             	sub    $0xc,%esp
 804a1f2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 804a1f6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804a1fc:	e8 5f e5 ff ff       	call   8048760 <_init>
 804a201:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 804a207:	29 c6                	sub    %eax,%esi
 804a209:	c1 fe 02             	sar    $0x2,%esi
 804a20c:	85 f6                	test   %esi,%esi
 804a20e:	74 25                	je     804a235 <__libc_csu_init+0x55>
 804a210:	31 ff                	xor    %edi,%edi
 804a212:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a218:	83 ec 04             	sub    $0x4,%esp
 804a21b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804a21f:	ff 74 24 2c          	pushl  0x2c(%esp)
 804a223:	55                   	push   %ebp
 804a224:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804a22b:	83 c7 01             	add    $0x1,%edi
 804a22e:	83 c4 10             	add    $0x10,%esp
 804a231:	39 f7                	cmp    %esi,%edi
 804a233:	75 e3                	jne    804a218 <__libc_csu_init+0x38>
 804a235:	83 c4 0c             	add    $0xc,%esp
 804a238:	5b                   	pop    %ebx
 804a239:	5e                   	pop    %esi
 804a23a:	5f                   	pop    %edi
 804a23b:	5d                   	pop    %ebp
 804a23c:	c3                   	ret    
 804a23d:	8d 76 00             	lea    0x0(%esi),%esi

0804a240 <__libc_csu_fini>:
 804a240:	f3 c3                	repz ret 

Disassembly of section .fini:

0804a244 <_fini>:
 804a244:	53                   	push   %ebx
 804a245:	83 ec 08             	sub    $0x8,%esp
 804a248:	e8 63 e7 ff ff       	call   80489b0 <__x86.get_pc_thunk.bx>
 804a24d:	81 c3 b3 2d 00 00    	add    $0x2db3,%ebx
 804a253:	83 c4 08             	add    $0x8,%esp
 804a256:	5b                   	pop    %ebx
 804a257:	c3                   	ret    
